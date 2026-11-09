#!/usr/bin/env python3
# Prints the windows of the focused workspace for polybar. Focused window is bold.
# Colors are read from colors.ini, so theme switches apply.

import json
import os
import re
import subprocess

COLORS = os.path.expanduser("~/.config/polybar/colors.ini")


def colors():
    fg, dim = "#586e75", "#93a1a1"
    try:
        with open(COLORS) as f:
            for line in f:
                m = re.match(r"\s*(fg|dim)\s*=\s*(#[0-9a-fA-F]{6})", line)
                if m and m.group(1) == "fg":
                    fg = m.group(2)
                elif m:
                    dim = m.group(2)
    except OSError:
        pass
    return fg, dim


def i3(*args):
    return json.loads(subprocess.check_output(["i3-msg", "-t", *args]))


def children(node):
    return node.get("nodes", []) + node.get("floating_nodes", [])


def leaves(node):
    for child in children(node):
        if child.get("window"):
            yield child
        else:
            yield from leaves(child)


def find_ws(node, name):
    if node.get("type") == "workspace" and node.get("name") == name:
        return node
    for child in children(node):
        found = find_ws(child, name)
        if found:
            return found
    return None


def render():
    try:
        fg, dim = colors()
        focused = next((w["name"] for w in i3("get_workspaces") if w["focused"]), None)
        ws = find_ws(i3("get_tree"), focused)
        if not ws:
            return ""
        out = []
        for w in leaves(ws):
            cls = (w.get("window_properties") or {}).get("class") or w.get("name") or "?"
            label = (cls[:1].upper() + cls[1:]).replace("%", "%%")
            if w.get("focused"):
                out.append("%{F" + fg + "}%{T2}" + label + "%{T-}%{F-}")
            else:
                out.append("%{F" + dim + "}" + label + "%{F-}")
        return "    ".join(out)
    except Exception:
        return ""


def main():
    print(render(), flush=True)
    proc = subprocess.Popen(
        ["i3-msg", "-t", "subscribe", "-m", '["window","workspace"]'],
        stdout=subprocess.PIPE,
        text=True,
    )
    for _ in proc.stdout:
        print(render(), flush=True)


if __name__ == "__main__":
    main()
