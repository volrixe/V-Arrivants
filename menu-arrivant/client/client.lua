ESX = nil 

TriggerEvent("esx:getSharedOject", function(obj) ESX = obj end) ----- ne pas toucher

local open = false

local menu = RageUI.CreateMenu("Menu Arrivant", "Interaction") ----- ne pas toucher sauf pour le nom Menu Arrivant
local sub_menu = RageUI.CreateSubMenu(menu, "Touche Serveur", "Les Touche :") ----- ne pas toucher sauf pour les nom Touche Serveur et Les Touche :
local sub_menujob = RageUI.CreateSubMenu(menu, "Job Serveur", "Les Job :") ----- ne pas toucher sauf pour les nom Job Serveur et Les Job :
local sub_menugps = RageUI.CreateSubMenu(menu, "GPS Serveur", "Les Waypoints :")
local sub_menucommande = RageUI.CreateSubMenu(menu, "Commande", "Les Commandes :")
local sub_menuhelp = RageUI.CreateSubMenu(menu, "HelpMe", "Les Situations :")
local sub_menureseau = RageUI.CreateSubMenu(menu, "Reseaux Sociaux", "Les Réseaux Sociaux Du Serveur :")                        

menu.Closed = function() ----- ne pas toucher
    open = false ----- ne pas toucher
end ----- ne pas toucher

local function openMenu() ----- ne pas toucher
    if not open then ----- ne pas toucher 
        open = true ----- ne pas toucher 
        RageUI.Visible(menu, true) ----- ne pas toucher
        CreateThread(function() ----- ne pas toucher
            while open do ----- ne pas toucher
                RageUI.IsVisible(menu, function() ----- ne pas toucher
                    RageUI.Separator("↓              ~y~Dans Le Serveur            ~s~↓")
                    RageUI.Button("Menu Touche", "~b~Faite Entrer Pour Voir Les Touches", {RightLabel = "~y~→→→"}, true, {}, sub_menu)  ----- ne pas toucher sauf pour les nom et le rightlabel
                    RageUI.Button("Menu Job Dispo/NonDispo", "~b~Faite Entrer Pour Voir Les Job Dispo", {RightLabel = "~y~→→→"}, true, {}, sub_menujob) ----- ne pas toucher sauf pour les nom et le rightlabel
                    RageUI.Button("Menu Point GPS", "~b~Faite Entrer Pour Voir Les GPS", {RightLabel = "~y~→→→"}, true, {}, sub_menugps) ----- ne pas toucher sauf pour les nom et le rightlabel
                    RageUI.Separator("↓               ~g~Aide           ~s~↓")
                    RageUI.Button("Menu Commande", "~b~Faite Entrer Pour Voir Les Commandes", {RightLabel = "~g~→→→"}, true, {}, sub_menucommande) ----- ne pas toucher sauf pour les nom et le rightlabel
                    RageUI.Button("Menu Réseaux Sociaux ", "~b~Faite Entrer Pour Voir Les Réseaux Sociaux", {RightLabel = "~g~→→→"}, true, {}, sub_menureseau) ----- ne pas toucher sauf pour les nom et le rightlabel
                    RageUI.Button("Probleme ?", "~b~Faite Entrer Pour Voir Comment Faire", {RightLabel = "~g~→→→"}, true, {}, sub_menuhelp) ----- ne pas toucher sauf pour les nom et le rightlabel
                    
                end)----- ne pas toucher

                RageUI.IsVisible(sub_menu, function() ----- ne pas toucher
                    RageUI.Separator("↓         ~y~Menu Touche         ~s~↓") ----- Vous pouvez modifier le nom
                    RageUI.Button("Menu F5", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F5"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Menu Job", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F6"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Menu Animal", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F7"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Menu Admin", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F11"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Screen Steam", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F12"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Menu Animal", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F7"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Menu Touche", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "~y~F2"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label

                 end) ----- ne pas toucher
                 RageUI.IsVisible(sub_menujob, function() ----- ne pas toucher
                    RageUI.Separator("↓         ~y~Menu Jobs         ~s~↓") ----- Vous pouvez modifier le nom 
                    RageUI.Button("LSPD", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "❌"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("EMS", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "✅"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Gouvernement", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "❌"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Bennys", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "✅"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Mechanic", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "❌"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Vigneron", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "✅"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Tabac", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "❌"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("UberEats", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "✅"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Assurance", "~y~https://discord.gg/CqKtgMqa", {RightLabel = "❌"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label

                 end)
                 RageUI.IsVisible(sub_menucommande, function() ----- ne pas toucher
                    RageUI.Separator("↓         ~g~Pour Admin       ~s~↓") ----- Vous pouvez modifier le nom
                    RageUI.Button("Revivre", "~g~te fais revivre quand tu fais cette commande", {RightLabel = "~g~/revive"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Setjob", "~g~te set un job en etant admin", {RightLabel = "~g~/setjob"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Tuer", "~g~tue la personne que tu veux", {RightLabel = "~g~/kill"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Ban", "~g~Bannie Un Joueur Avec L'ID", {RightLabel = "~g~/ban"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Deban", "~g~Debannie Le Joueur Avec L'ID", {RightLabel = "~g~/deban"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Menu Animal", "~g~https://discord.gg/CqKtgMqa", {RightLabel = "~g~F7"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                 end)

                 RageUI.IsVisible(sub_menuhelp, function() ----- ne pas toucher
                    RageUI.Separator("↓         ~g~Menu Probleme         ~s~↓") ----- Vous pouvez modifier le nom
                    RageUI.Button("FreeKill", "~g~Contactez Un admin Sur le discord", {RightLabel = "~g~→→→"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Connexion", "~g~Aller Dans la vocal Besoin D'aide", {RightLabel = "~g~→→→"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Carkill", "~g~Contactez Un admin Sur le discord", {RightLabel = "~g~→→→"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Devenir Admin", "~g~Creer un ticket et faite votre candidature", {RightLabel = "~g~→→→"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Reglement", "~g~contacer un admin", {RightLabel = "~g~→→→"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Button("Spawn PNJ", "~g~Aller Dans la vocal Besoin D'aide", {RightLabel = "~g~→→→"}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                 end)

                 RageUI.IsVisible(sub_menureseau, function() ----- ne pas toucher
                    RageUI.Separator("↓       ~g~Discord     ~s~↓") ----- Vous pouvez modifier le nom
                    RageUI.Button("           https://discord.gg/SzdZ3trr     ", "~g~Voici Le Liens Discord Du Serveur", {RightLabel = ""}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                    RageUI.Separator("↓        ~g~Twitter     ~s~↓") ----- Vous pouvez modifier le nom
                    RageUI.Button("           https://twitter.com/EJxpad     ", "~g~Voici Le Liens Twitter Du Serveur Fivem", {RightLabel = ""}, true, {}) ----- Vous pouvez Modifier les nom , changer la couleur et le right label
                 end)

                 RageUI.IsVisible(sub_menugps, function()
                    RageUI.Separator("↓         ~y~Menu GPS         ~s~↓") ----- Vous pouvez modifier le nom
                    RageUI.Button("Pole Emploie", "Veulliez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point au pole emploie
                        onSelected = function()
                            SetNewWaypoint(-260.64782714844, -972.55249023438, 30.219472885132) -- coordonnées du marqueur sur la map du pôle emploi
                        end
                    })

                RageUI.Button("Superette Ballas", "Veulliez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                    onSelected = function()
                        SetNewWaypoint(-48.52, -1757.51, 29.42) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                    end
                })

            RageUI.Button("Concessionnaire Voiture", "Veulliez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-30.540243148804, -1106.8100585938, 29.071321487427) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Assurance Auto", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-781.79608154297, -210.91012573242, 36.152725219727) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Commisseriat", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(442.69055175781, -983.51000976563, 29.689804077148) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Hopital", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(296.23031616211, -585.17999267578, 16.756881713867) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Bahamas", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-1391.5201416016, -585.01715087891, 29.232475280762) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Immobilier", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-1382.5699462891, -500.54998779297, 32.157405853271) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("BurgerShot", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-1193.7200927734, -892.76000976563, 18.979091644287) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Parking Central", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(228.83973693848, -800.83001708984, 29.586099624634) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Fourriere", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(408.60989379883, -1625.4699707031, 28.291940689087) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Coiffeur Shop", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(136.82583618164, -1708.373046875, 28.291610717773) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Maison Blanche", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-552.81372070313, -192.08360290527, 37.220840454102) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

            RageUI.Button("Bijouterie", "Veuillez appuyer sur entrer pour mettre un point : ", {RightLabel = "~y~→→→"}, true, { -- bouton dans le menu gps pour mettre un point sur une supérette
                onSelected = function()
                    SetNewWaypoint(-629.98968505859, -236.54222106934, 37.057033538818) -- coordonnées du marqueur sur la map de la supérette la plus proche de l'aéroport
                end
            })

                end)
            Wait(0) ----- ne pas toucher
            end ----- ne pas toucher
        end) ----- ne pas toucher
    end ----- ne pas toucher
end ----- ne pas toucher

RegisterCommand("arrivant", function() ----- Vous pouvez si vous le souhaiter changer le nom de la commande pour quelle est un meilleur referensement (par exemple : HelpMe)
    openMenu() ----- ne pas toucher
end) ----- ne pas toucher

Keys.Register('F2', 'F2', 'Ouvrir le menu arrivants', function() -- touche par défaut pour ouvrir le menu
    openMenu() -- nom de la fonction principale
end)