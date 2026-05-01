# FitMentor

#### Design System · Tokens, componentes e diretrizes

#### v1.


## 1. Princípios de design

- Confiança fitness: visual saudável, energético e profissional — verde esmeralda como assinatura.
- Clareza antes de ornamento: hierarquia tipográfica forte, espaçamento generoso, decoração apenas
    onde agrega.
- Tokens semânticos sempre: nunca cores hardcoded em componentes — só tokens definidos em
    src/styles.css.
- Acessibilidade: contraste AA mínimo, foco visível, suporte a tema escuro nativo.
- Mobile-first: layouts respondem a partir de 360px e escalam para desktop.

### 2. Identidade

```
Nome: FitMentor
Logotipo: ícone de halter (Dumbbell) em badge com gradiente esmeralda + wordmark “Fit” em
foreground e “Mentor” com gradiente.
Tom de voz: motivador, direto, técnico-acessível. Evita jargão fitness exagerado.
```
## 3. Paleta de cores

```
Todos os tokens são definidos em oklch em src/styles.css e expostos via @theme inline para
uso direto em classes Tailwind (ex.: bg-primary, text-muted-foreground).
```
##### 3.1 Cores de marca

```
Token Hex Uso
--primary
(Emerald primary) #10b981 Botões principais, links, destaques
--emerald-glow
(Emerald glow) #34d399 Gradientes, brilhos, estado hover
--primary-foreground
(Primary foreground) #f0fdfa Texto sobre primary
```
##### 3.2 Superfícies e neutros

```
Token Hex Uso
--background
(Background) #fafafa Fundo geral da página
--surface
(Surface) #f8fafc Seções alternadas, footer
```

```
Token Hex Uso
--card
(Card) #ffffff Cards e contêineres elevados
--foreground
(Foreground) #0f172a Texto principal
--muted-foreground
(Muted foreground) #64748b Texto secundário, legendas
--border
(Border) #e2e8f0 Divisores e bordas de input
```
##### 3.3 Cores semânticas de status

```
Token Hex Uso
--success
(Success) #16a34a Confirmação, sessão aceita
--warning
(Warning) #eab308 Pendências, atenção
--info
(Info) #0ea5e9 Avisos neutros, mensagens informativas
--destructive
(Destructive) #ef4444 Recusas, exclusões, erros
```
##### 3.4 Tema escuro

O modo escuro inverte superfícies para tons profundos (azul-grafite) e amplifica o emerald primary para
manter o brilho. Ativar adicionando a classe dark no elemento raiz.


## 4. Tipografia

```
Família única Inter (system-ui fallback) usada para headings e body, mantendo coesão. Pesos principais:
400 (regular), 500 (medium), 600 (semibold), 700 (bold), 800 (extrabold) para hero.
Estilo Uso Tailwind
Display / Hero H1 da landing, página de cadastro text-5xl lg:text-6xl font-extrabold tracking-tight
H1 Título de página interna text-3xl font-bold
H2 Seções text-2xl font-semibold
H3 Subseções, títulos de card text-lg font-semibold
Body Texto padrão text-base text-foreground
Small / Caption Legendas, metadados text-sm text-muted-foreground
Label Inputs, badges text-sm font-medium
```
## 5. Espaçamento e raio

```
Escala de espaçamento segue a padrão Tailwind (múltiplos de 4px). Containers usam max-w-7xl e
padding lateral px-4 sm:px-6 lg:px-8.
Token Valor base Aplicação
--radius 0.75rem (12px) Cards, inputs, botões
--radius-sm 8px Badges, chips
--radius-lg 12px Cards principais
--radius-2xl 20px Hero image, modais
```
## 6. Sombras e elevação

```
Classe Uso
.shadow-card Cards padrão, contêineres elevados leves.
.shadow-primary Botões CTA com tom esmeralda — ação principal.
.shadow-elevated Modais, hero floating, estados hover de card.
```
## 7. Gradientes e utilitários

- .bg-gradient-primary — gradiente esmeralda 135°, usado em CTAs e badges de destaque.
- .text-gradient-primary — wordmark e palavras-chave em headlines.


- .transition-smooth — transição padrão (300ms cubic-bezier) para hovers e estados.
- .animate-float — flutuação suave usada no card decorativo do hero.


## 8. Componentes principais

```
Baseados em shadcn/ui (Radix + Tailwind). Personalizar via variants — nunca via cores arbitrárias.
```
##### 8.1 Button

```
Variant Uso
default Ação primária genérica.
gradient (custom) CTA principal — combina <font face='Courier'>bg-gradient-primary</font> + <font face='Courier'>shadow-primary</font>.
outline Ação secundária, botões em hero (Sou Profissional).
ghost Ações em navbar, ícones.
destructive Recusar mentoria, excluir conta.
```
##### 8.2 Card

```
Container padrão para perfis de profissional, sessões de mentoria e blocos de conteúdo. Usar
rounded-xl border bg-card shadow-card. Hover: shadow-elevated transition-smooth.
```
##### 8.3 Badge

```
Para especialidades, status de sessão (pendente/confirmada/recusada) e objetivos do aluno. Mapear
status → variant semântica (success, warning, destructive, secondary).
```
##### 8.4 Inputs e formulários

- Sempre usar Label + Input com espaçamento space-y-2.
- Mensagens de erro em text-destructive text-sm.
- Botão de submit em largura total no mobile (w-full).

##### 8.5 Navbar

```
Topo fixo, fundo translúcido, links com hover suave. Mostra ações contextuais por papel (aluno vê “Hub
de profissionais”, profissional vê “Painel”).
```
## 9. Padrões de layout

- Landing: Hero (texto + imagem) → Features → Como funciona → CTA → Footer.
- Auth (login/cadastro): split-screen 50/50 em desktop, painel único em mobile.
- Painel: stat cards no topo, tabs para filtros, lista de cards de sessão com ações inline.
- Hub do aluno: sidebar de filtros + grid responsivo de cards de profissional.

## 10. Acessibilidade

- Contraste mínimo AA — verificado em ambos os temas.


- Foco visível (focus-visible:ring-1 focus-visible:ring-ring) em todos os interativos.
- Hierarquia semântica: um único <h1> por página, ordem lógica.
- Atributos alt descritivos em imagens; ícones decorativos com aria-hidden.
- Todos os formulários com label associado.

## 11. Regras de ouro

- n Nunca text-white, bg-black, text-[#10b981] em componentes.
- n Sempre tokens semânticos: bg-primary, text-foreground, border-border.
- n Novas cores são adicionadas em src/styles.css e expostas via @theme inline.
- n Variantes de componente são criadas com cva, não com props soltas.
- n Layouts respondem a partir de mobile; quebra-pontos sm / md / lg usados explicitamente.


