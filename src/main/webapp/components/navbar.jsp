<nav id="navbar"
     class="fixed top-0 left-0 w-full z-50 bg-slate-950/80 backdrop-blur-md border-b border-slate-800">

    <div class="max-w-7xl mx-auto px-6">

        <div class="flex items-center justify-between h-20">

            <!-- ================= Logo ================= -->

            <a href="#home" class="group">

                <h1 class="text-3xl font-bold tracking-wider">

                    <span class="text-cyan-400 group-hover:text-cyan-300 duration-300">
                        RV
                    </span>

                </h1>

                <p class="text-[10px] uppercase tracking-[5px] text-slate-400">

                    Java Developer

                </p>

            </a>

            <!-- ================= Desktop Menu ================= -->

            <ul class="hidden lg:flex items-center gap-10 font-medium">

                <li>
                    <a href="#home"
                       class="hover:text-cyan-400 duration-300">
                        Home
                    </a>
                </li>

                <li>
                    <a href="#about"
                       class="hover:text-cyan-400 duration-300">
                        About
                    </a>
                </li>

                <li>
                    <a href="#skills"
                       class="hover:text-cyan-400 duration-300">
                        Skills
                    </a>
                </li>

                <li>
                    <a href="#projects"
                       class="hover:text-cyan-400 duration-300">
                        Projects
                    </a>
                </li>

                <li>
                    <a href="#contact"
                       class="hover:text-cyan-400 duration-300">
                        Contact
                    </a>
                </li>

            </ul>

            <!-- ================= Right Buttons ================= -->

            <div class="hidden lg:flex items-center gap-4">

                <a href="uploads/resume.pdf"
                   target="_blank"
                   class="px-5 py-2 rounded-lg border border-cyan-400 hover:bg-cyan-400 hover:text-black transition">

                    Resume

                </a>

                <a href="#contact"
                   class="px-5 py-2 rounded-lg bg-cyan-500 hover:bg-cyan-600 transition">

                    Hire Me

                </a>

            </div>

            <!-- ================= Mobile Menu Button ================= -->

            <button id="menuBtn"
                    class="lg:hidden text-3xl">

                ☰

            </button>

        </div>

    </div>

    <!-- ================= Mobile Menu ================= -->

    <div id="mobileMenu"
         class="hidden lg:hidden bg-slate-900 border-t border-slate-800">

        <a href="#home" class="block px-6 py-4 hover:bg-slate-800">Home</a>

        <a href="#about" class="block px-6 py-4 hover:bg-slate-800">About</a>

        <a href="#skills" class="block px-6 py-4 hover:bg-slate-800">Skills</a>

        <a href="#projects" class="block px-6 py-4 hover:bg-slate-800">Projects</a>

        <a href="#contact" class="block px-6 py-4 hover:bg-slate-800">Contact</a>

    </div>

</nav>