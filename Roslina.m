classdef Roslina
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        rodzaj {string}       % kwiat, warzywo, owoc
        nazwa {string}        % nazwa rośliny
        pochlanianieRosliny {double} % pochlanianie wody cm^3
        %dlugosc {double}
        %szerokosc {double}
        wysokosc {double} % wysokość rośliny
        dataPodlania {datetime}
        stanPodlania {string} % stan rośliny (usycha, umiarkowane, nawodnione)
        

    end

    methods
        % Tworzenie konstruktora klasy
        function obj = Roslina(rodzaj,nazwa,pochlanianieRosliny,wysokosc)
            obj.rodzaj = rodzaj;
            obj.nazwa = nazwa;
            obj.pochlanianieRosliny = pochlanianieRosliny;
            obj.wysokosc = wysokosc;
            % Zakładamy, że roślina jest w dobrym stanie w momencie
            % dołączania
            obj.stanPodlania = "nawodniony";
            obj.dataPodlania = datetime('now') + days(2);
        end

        function obj = parowanie(inputArg1,inputArg2)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            obj.Property1 = inputArg1 + inputArg2;
        end

        function outputArg = pochlanianie(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end

        function dataPodlania = data_podlania()
            dataPoprzedniegoPodlania = this.dataPodlania
            if strcmp(this.stanRosliny, 'usycha')
                this.dataPodlania = dataPoprzedniegoPodlania;
            elseif strcmp(this.stanRosliny,'umiarkowany')
                this.dataPodlania = dataPoprzedniegoPodlania + days(1);
            else
                this.dataPodlania = dataPoprzedniegoPodlania + days(2);
            end
        % funkcja parowania
        % funkcja pochłaniania
        % pobieranie aktualnej daty
        % wyliczanie, na ile czasu potrzeba wody
        % zwracanie daty następnego podlania <- return
        end
    end
end