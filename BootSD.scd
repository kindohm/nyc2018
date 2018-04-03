s.options.device_("MME : Line 1 (Virtual Audio Cable)");

(
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;

s.waitForBoot {
	~dirt = SuperDirt(2, s);
	// ~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\live-2016\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\a-code\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\articulator\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\blue-code\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\c-code\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\it-me\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\pad2\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\pad3\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\rebellion\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\shared\\*");
	s.sync;
	~dirt.start(57120, [0, 0]);
};

s.latency = 0.2;
);


(
MIDIClient.init;
MIDIClient.list; // to check, which are there, you can query them
)

// ~midiOut = MIDIOut.newByName("Focusrite USB MIDI", "Focusrite USB MIDI");
~midiOut = MIDIOut.newByName("LoopBe Internal MIDI", "LoopBe Internal MIDI");
~midiOut.latency = 0.45;
~dirt.soundLibrary.addMIDI(\midi, ~ midiOut);
