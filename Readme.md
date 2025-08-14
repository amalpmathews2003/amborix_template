# Ambiorix CMake Template

This repository provides a template for building Ambiorix modules and executables using CMake. It is designed for both native and OpenWrt cross-compilation environments, and supports modular development with clear separation of source, module, and configuration files.

## Features
- **CMake-based build system** with strict warning and error flags
- **OpenWrt cross-compilation** support via environment variables
- **Modular structure** for custom Ambiorix modules
- Example Makefile for OpenWrt packaging
- Ready for integration with CI/CD pipelines

## Project Structure
```
.
├── CMakeLists.txt           # Top-level CMake configuration
├── Makefile                 # OpenWrt package build script
├── ironmake.sh              # (Reserved for custom build automation)
├── include_priv/            # Private headers (global)
│   └── test.h
├── mod-custom/              # Example custom module
│   ├── CMakeLists.txt
│   ├── include_priv/        # Module-specific private headers
│   │   └── test.h
│   └── src/                 # Module source code
│       └── CMakeLists.txt
├── odl/                     # ODL configuration files (installed to /etc/amx/)
│   └── CMakeLists.txt
├── src/                     # Main application source
│   └── CMakeLists.txt
└── Readme.md                # Project documentation
```

## Getting Started


### Using the Makefile (OpenWrt)
The provided `Makefile` is tailored for OpenWrt's build system. Adjust variables as needed and use within the OpenWrt buildroot.

## Customization
- Add your source files to `src/` or `mod-custom/src/` as needed.
- Place private headers in the appropriate `include_priv/` directory.
- Add ODL configuration files to `odl/`.
- Update `CMakeLists.txt` files to include new modules or sources.

## License
This template is provided as-is for rapid Ambiorix module development. Add your license information here.

---
For more details, see comments in each `CMakeLists.txt` and the Makefile.
