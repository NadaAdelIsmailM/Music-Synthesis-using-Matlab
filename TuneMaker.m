notes={'O' 'C' 'C#' 'D' 'Eb' 'E' 'F' 'F#' 'G' 'G#' 'A' 'Bb' 'B' 'C2' 'C#2'}
%notesa={'O' 'C' 'C#' 'D' 'E' 'Eb' 'F#' 'F' 'G' 'G#' 'A' 'B' 'Bb'}
freq=[0 261.6  277.2  293.7  311.1  329.6  349.2  370.0  392.0    415.3  440.0  466.2  493.9 261.6*2 277.2*2]
Fullscale={'C' 'C#' 'D' 'Eb' 'E' 'F' 'F#' 'G' 'G#' 'A' 'Bb' 'B'}
Fullscalesnd=[];
pause=0:0.000125:0.025;
for k=1:numel(Fullscale)
  note_value=0:0.000125:0.25; % You can change the note duration
  Fullscalesnd=[Fullscalesnd sin(2*pi* freq(strcmp(notes,Fullscale{k}))*note_value)];
end
majorscale={'C' 'D' 'E' 'F' 'G' 'A' 'B' 'C2' 'B' 'A' 'G' 'F' 'E' 'D' 'C'};
majorscalesnd=[];
for k=1:numel(majorscale)
  note_value=0:0.000125:0.5; % You can change the note duration
  majorscalesnd=[majorscalesnd sin(2*pi* freq(strcmp(notes,majorscale{k}))*note_value)];
end
minorscale={'C' 'D' 'Eb' 'F' 'G' 'G#' 'Bb' 'C2' 'Bb' 'G#' 'G' 'F' 'Eb' 'D' 'C'};
minorscalesnd=[];
for k=1:numel(minorscale)
  note_value=0:0.000125:0.5; % You can change the note duration
  minorscalesnd=[minorscalesnd sin(2*pi* freq(strcmp(notes,minorscale{k}))*note_value)];
end
arabscale={'C' 'D' 'Eb' 'F#' 'G' 'A' 'Bb' 'C2' 'Bb' 'A' 'G' 'F#' 'Eb' 'D' 'C'};
arabscalesnd=[];
for k=1:numel(arabscale)
  note_value=0:0.000125:0.5; % You can change the note duration
  arabscalesnd=[arabscalesnd sin(2*pi* freq(strcmp(notes,arabscale{k}))*note_value)];
  arabscalesnd=[arabscalesnd pause*0];
end
chinesescale={'C#' 'Eb' 'F#' 'G#' 'Bb' 'C#2' 'Bb' 'G#' 'F#' 'Eb' 'C#'};
chinesescalesnd=[];
for k=1:numel(chinesescale)
  note_value=0:0.000125:0.5; % You can change the note duration
  chinesescalesnd=[chinesescalesnd sin(2*pi* freq(strcmp(notes,chinesescale{k}))*note_value)];
  chinesescalesnd=[chinesescalesnd pause*0];
end
japanesescale={'C' 'E' 'F' 'A' 'B' 'C2' 'B' 'A' 'F' 'E' 'C'};
japanesescalesnd=[];
for k=1:numel(japanesescale)
  note_value=0:0.000125:0.5; % You can change the note duration
  japanesescalesnd=[japanesescalesnd sin(2*pi* freq(strcmp(notes,japanesescale{k}))*note_value)];
  japanesescalesnd=[japanesescalesnd pause*0];
end
twinkle={'C' 'C' 'G' 'G' 'A' 'A' 'G' 'O' 'F' 'F' 'E' 'E' 'D' 'D' 'C' 'O'}  % your song
twinklesnd=[]
for k=1:numel(twinkle)
  note_value=0:0.000125:0.5; % You can change the note duration
  twinklesnd=[twinklesnd sin(2*pi* freq(strcmp(notes,twinkle{k}))*note_value)];
end
states={'1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12'};
curentstate='1';
Song_Duration=5;
songnotes={"C"};
for i=1:(Song_Duration*4)
    if curentstate=="1"
       possiblestates=["7" "2"];
       choice=randsample(possiblestates,1);
       if choice=="7"
           songnotes{end+1} = "O";
       else choice=="2"
           songnotes{end+1} = "C";
       end
       curentstate=choice;
    elseif curentstate=="2"
       choice='3';
       songnotes{end+1} = "C";
       curentstate=choice;
    elseif curentstate=="3"
       possiblestates=["4" "9"];
       choice=randsample(possiblestates,1);
       if choice=="9"
           songnotes{end+1} = "G";
       else choice=="4"
           songnotes{end+1} = "C";
       end
       curentstate=choice;
    elseif curentstate=="4" 
       choice='5';
       songnotes{end+1} = "O";
       curentstate=choice;
    elseif curentstate=="5" 
       possiblestates=["6" "11"];
       choice=randsample(possiblestates,1);
       if choice=="6"
           songnotes{end+1} = "D";
       else choice=="11"
           songnotes{end+1} = "C";
       end
       curentstate=choice;
    elseif curentstate=="6" 
       choice='1';
       songnotes{end+1} = "C";
       curentstate=choice;
    elseif curentstate=="7"
       possiblestates=["3" "8"];
       choice=randsample(possiblestates,1);
       if choice=="8"
           songnotes{end+1} = "O";
       else choice=="3"
           songnotes{end+1} = "C";
       end
       curentstate=choice;
    elseif curentstate=="8" 
       possiblestates=["4" "9"];
       choice=randsample(possiblestates,1);
       if choice=="4"
           songnotes{end+1} = "D";
       else choice=="9"
           songnotes{end+1} = "G";
       end
       curentstate=choice;
    elseif curentstate=="9" 
       possiblestates=["10" "5"];
       choice=randsample(possiblestates,1);
       if choice=="10"
           songnotes{end+1} = "E";
       else choice=="5"
           songnotes{end+1} = "O";
       end
       curentstate=choice;
    elseif curentstate=="10" 
       possiblestates=["11" "6"];
       choice=randsample(possiblestates,1);
       if choice=="11"
           songnotes{end+1} = "C";
       else choice=="6"
           songnotes{end+1} = "D";
       end
       curentstate=choice;
    elseif curentstate=="11" 
       choice='12';
       songnotes{end+1} = "D";
       curentstate=choice;
    elseif curentstate=="12" 
       choice='7';
       songnotes{end+1} = "O";
       curentstate=choice;
    end
end
snd=[];
for k=1:numel(songnotes)
  note_value=0:0.000125:0.5; % You can change the note duration
  snd=[snd sin(2*pi* freq(strcmp(notes,songnotes{k}))*note_value)];
end
%sound(Fullscalesnd)
%sound(majorscalesnd)
%sound(minorscalesnd)
%sound(arabscalesnd)
%sound(chinesescalesnd)
%sound(japanesescalesnd) 
sound(snd)

