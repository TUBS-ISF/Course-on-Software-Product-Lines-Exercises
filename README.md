# Course on Software Product Lines: Exercises

**[Open educational resources](https://en.wikipedia.org/wiki/Open_educational_resources) on software product lines**

* [LaTeX Slides](https://github.com/TUBS-ISF/Course-on-Software-Product-Lines): Material for lectures on software product lines 
* **LaTeX Exercises**: Material for exercises on software product lines
* [PDF Slides](https://github.com/TUBS-ISF/Course-on-Software-Product-Lines-Slides): Released version of slides for the lecture on software product lines
* [Recordings](https://www.youtube.com/playlist?list=PL4hJhdKDPIxha8So7muX2zfNUU8NBoiu3): YouTube playlist with lecture recordings

*If you have any feedback, please contact [Thomas Thüm](mailto:t.thuem@tu-braunschweig.de).*

## Contact

Core contributors:

- [Elias Kuiter](https://www.dbse.ovgu.de/Mitarbeiter/Elias+Kuiter.html) (University of Magdeburg, Germany)
- [Sandra Greiner](https://sandragreiner.github.io/) (University of Southern Denmark, Odense, Denmark)

Further contributors and former project members:

- [Paul Maximilian Bittner](https://www.tu-braunschweig.de/isf/team/bittner) (TU Braunschweig, Germany)
- [Chico Sundermann](https://www.tu-braunschweig.de/isf/team/chico-sundermann) (TU Braunschweig, Germany)
- [Rahel Sundermann](https://www.tu-braunschweig.de/isf/team/rahel-sundermann) (TU Braunschweig, Germany)
- [Sebastian Krieter](https://www.tu-braunschweig.de/isf/team/krieter) (TU Braunschweig, Germany)
- Utkarsh Midha (TU Braunschweig, Germany)

## Getting Started

```
git clone --recursive https://github.com/TUBS-ISF/Course-on-Software-Product-Lines-Exercises.git
cd Course-on-Software-Product-Lines-Exercises/exercises
./compile_semester.sh <semester>-<university> # to compile all exercises
```

Alternatively, copy a file `exercises/<semester>-<uni>.tex` to your own university and semester, make adjustments, and compile as usual with LaTeX.

**Configuration Options**

- `\enablesolution`:
	For most tasks, we also prepared solution sketches, which can be shown with this command.
	However, we do not include any solutions in the public GitHub repository.
	If you are a teacher and want access to the private repository, please [contact us](mailto:t.thuem@tu-braunschweig.de).
- `\enablegerman`:
	We translated all tasks into both English and German, which can be switched with this command.
	All solutions are given in English.
- `\theuniversity` (and other metadata):
	These options can be customized to adapt exercise sheets to different universities.

## License

All course material is licensed under the <a href="http://creativecommons.org/licenses/by-sa/4.0/">CC-BY-SA-4.0</a> license (Creative Commons Attribution Share Alike).

<p align="center">
	<a href="http://creativecommons.org/licenses/by-sa/4.0/"><img src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" alt="CC-BY-SA-4.0"/></a>
</p>

<p align="center">
	<a href="https://creativecommons.org/share-your-work/public-domain/freeworks"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b7/Approved-for-free-cultural-works.svg" alt="Approved for Free Cultural Works"/></a>
</p>
