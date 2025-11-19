Wrappers and Extenders: Companion Packages for Python Projects

Many Python users want features that don’t fit within the boundaries of their favorite libraries. Instead of forking or waiting on a pull request, you can build your own wrapper or extender package. This talk introduces the principles of designing companion packages that enhance existing libraries without changing their core code, using gt-extras as a case study. You’ll learn how to structure, document, and distribute your own add-ons to extend the tools you rely on.

Python’s ecosystem thrives on extensibility, but not every feature request belongs in a core library. Sometimes, the best way to add new capabilities is to build a companion package that works alongside an existing project. This talk will use gt-extras (which adds plots, icons, and more to Great Tables) as a practical example, but the focus will be on general strategies for designing, building, and maintaining your own add-on packages.
What we’ll cover:

    Why build an extender package? When to create a companion package instead of forking or submitting a PR, and how this approach benefits both users and maintainers.
    How to structure your package, keep dependencies light, and ensure compatibility with the upstream library.
    Walkthrough of the gt-extras example: how gt-extras wraps and extends Great Tables, including passing objects through, adding new features, and maintaining a clean interface.
    Documentation and distribution: best practices for documenting your package, managing releases, and making your add-on discoverable and easy to use.

Takeaways:

Attendees will learn how to identify when an extender package is the right solution, how to design and implement one, and how to maintain it as both the upstream library and user needs evolve.
Audience:

This session is ideal for Python developers who want to extend the functionality of existing libraries, package maintainers, and anyone interested in contributing to the Python ecosystem without modifying core packages. A working knowledge of Python packaging is helpful but not required.
