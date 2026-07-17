<section id="contact" class="py-20 bg-slate-950 relative overflow-hidden">

    <!-- Background Glow -->

    <div class="absolute top-0 left-1/2 -translate-x-1/2 w-[500px] h-[500px] bg-cyan-500/10 blur-[140px] rounded-full"></div>

    <div class="relative max-w-3xl mx-auto px-6">

        <!-- Heading -->

        <div class="text-center mb-12">

            <p class="text-cyan-400 uppercase tracking-[4px] font-semibold">

                Contact Me

            </p>

            <h2 class="text-4xl md:text-5xl font-bold mt-3">

                Let's Build Something Amazing

            </h2>

           

            <div class="w-24 h-1 bg-cyan-400 rounded-full mx-auto mt-6"></div>

        </div>

        <!-- Contact Form -->

        <div class="bg-slate-900/80 backdrop-blur-xl border border-slate-700 rounded-3xl p-8 md:p-10 shadow-2xl hover:border-cyan-400 transition-all duration-500">

            <form action="contact" method="post">

                <div class="grid md:grid-cols-2 gap-6">

                    <!-- Full Name -->

                    <div>

                        <label class="block text-slate-300 mb-2">

                            Full Name

                        </label>

                        <div class="relative">

                            <i class="fas fa-user absolute left-4 top-1/2 -translate-y-1/2 text-cyan-400"></i>

                            <input
                                type="text"
                                name="fullName"
                                required
                                placeholder="Enter your name"
                                class="w-full pl-12 pr-4 py-4 rounded-xl bg-slate-800 border border-slate-700 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20 outline-none transition">

                        </div>

                    </div>

                    <!-- Email -->

                    <div>

                        <label class="block text-slate-300 mb-2">

                            Email

                        </label>

                        <div class="relative">

                            <i class="fas fa-envelope absolute left-4 top-1/2 -translate-y-1/2 text-cyan-400"></i>

                            <input
                                type="email"
                                name="email"
                                required
                                placeholder="Enter your email"
                                class="w-full pl-12 pr-4 py-4 rounded-xl bg-slate-800 border border-slate-700 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20 outline-none transition">

                        </div>

                    </div>

                </div>

                <!-- Subject -->

                <div class="mt-6">

                    <label class="block text-slate-300 mb-2">

                        Subject

                    </label>

                    <div class="relative">

                        <i class="fas fa-tag absolute left-4 top-1/2 -translate-y-1/2 text-cyan-400"></i>

                        <input
                            type="text"
                            name="subject"
                            required
                            placeholder="Enter subject"
                            class="w-full pl-12 pr-4 py-4 rounded-xl bg-slate-800 border border-slate-700 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20 outline-none transition">

                    </div>

                </div>

                <!-- Message -->

                <div class="mt-6">

                    <label class="block text-slate-300 mb-2">

                        Message

                    </label>

                    <div class="relative">

                        <i class="fas fa-comment-dots absolute left-4 top-5 text-cyan-400"></i>

                        <textarea
                            name="message"
                            rows="6"
                            required
                            placeholder="Write your message..."
                            class="w-full pl-12 pr-4 py-4 rounded-xl bg-slate-800 border border-slate-700 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20 outline-none transition resize-none"></textarea>

                    </div>

                </div>

                <!-- Button -->

                <button
                    type="submit"
                    class="w-full mt-8 py-4 rounded-xl bg-cyan-500 hover:bg-cyan-400 text-black font-bold text-lg transition duration-300 hover:scale-[1.02] hover:shadow-[0_0_25px_rgba(34,211,238,0.5)]">

                    <i class="fas fa-paper-plane mr-2"></i>

                    Send Message

                </button>

            </form>

        </div>

    </div>

</section>