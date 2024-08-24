Ghidra Import Script
===

Usage
---
1. File / "Parse C Source" with the `VisualStudio12_32.prf`
2. Set the source files
    - rpcsal.h
    - Windows.h
    - windowsx.h
    - ddraw.h
    - d3dtypes.h
    - d3d.h
    - dinput.h
    - dsound.h
3. Set Include paths to
    - C:\Program Files (x86)\Microsoft DirectX SDK (August 2007)\Include
    - C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\include
    - C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Include
4. Set The defines to
```
-DDIRECTDRAW_VERSION=0x700
-DDIRECT3D_VERSION=0x700
-DDIRECTINPUT_VERSION=0x700
-DDIRECTSOUND_VERSION=0x700
```
5. In ghidra run the following
```python
__import__("imp").load_source('analysis', r'PATH\TO\The/bw1-decomp/scripts/ghidra/ghidra_import.py').main(currentProgram, state)
```
