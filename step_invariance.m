%{
Este código define uma função de transferência contínua G(s)= 1/(s+1), 
a converte para uma função de transferência discreta usando um período de amostragem de 0,1 segundos, 
e plota as respostas ao impulso, degrau e diagramas de Bode para comparar as características do sistema contínuo e discreto. 
As figuras ajudam a visualizar como o sistema se comporta em diferentes domínios (tempo e frequência) para ambas as representações.
%}

clear all
close all
clc
% Função de Transferência Contínua
s = tf('s')
GS = tf(1/(s+1))
T = 0.1 %Período de Amostragem [s]
GZ = c2d(GS,T,’zoh')
figure(1)
impulse(GS,GZ)
figure(2)
step(GS,GZ)
figure(3)
bode(GS,GZ)
