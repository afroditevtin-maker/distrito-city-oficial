.class final Lcom/xyron/game/main/AngraHudReadout;
.super Ljava/lang/Object;
.source "AngraHudReadout.java"


# static fields
.field private static final XP:Ljava/util/regex/Pattern;


# instance fields
.field armour:I

.field cash:Ljava/lang/String;

.field cashReady:Z

.field private final currency:Ljava/text/NumberFormat;

.field experience:Ljava/lang/String;

.field experienceReady:Z

.field health:I

.field hunger:I

.field private lastCash:I

.field level:I

.field progress:F

.field private serverCashReady:Z

.field vitalsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "(\\d+)\\s*/\\s*(\\d+)\\s*XP"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xyron/game/main/AngraHudReadout;->XP:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->currency:Ljava/text/NumberFormat;

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/xyron/game/main/AngraHudReadout;->level:I

    .line 16
    const-string/jumbo v0, "\u2014"

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    return-void
.end method

.method static percent(I)I
    .locals 1

    const/16 v0, 0x64

    .line 50
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method cash(I)V
    .locals 3

    .line 27
    iget-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->cashReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xyron/game/main/AngraHudReadout;->lastCash:I

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->currency:Ljava/text/NumberFormat;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    .line 28
    :cond_1
    iput p1, p0, Lcom/xyron/game/main/AngraHudReadout;->lastCash:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/main/AngraHudReadout;->cashReady:Z

    return-void
.end method

.method experience(ILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 31
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/AngraHudReadout;->level:I

    .line 32
    sget-object p1, Lcom/xyron/game/main/AngraHudReadout;->XP:Ljava/util/regex/Pattern;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    const-string/jumbo v1, "\u2014"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iput-boolean v2, p0, Lcom/xyron/game/main/AngraHudReadout;->experienceReady:Z

    iput-object v1, p0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    iput v3, p0, Lcom/xyron/game/main/AngraHudReadout;->progress:F

    return-void

    .line 34
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-lez v5, :cond_2

    .line 38
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v7, 0x6

    invoke-virtual {v5, v4, v7, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/xyron/game/main/AngraHudReadout;->progress:F

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " XP"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->experienceReady:Z

    goto :goto_0

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    iput-boolean v2, p0, Lcom/xyron/game/main/AngraHudReadout;->experienceReady:Z

    iput-object v1, p0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    iput v3, p0, Lcom/xyron/game/main/AngraHudReadout;->progress:F

    :goto_0
    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    iput v0, p0, Lcom/xyron/game/main/AngraHudReadout;->armour:I

    iput v0, p0, Lcom/xyron/game/main/AngraHudReadout;->health:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/xyron/game/main/AngraHudReadout;->level:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/xyron/game/main/AngraHudReadout;->progress:F

    .line 46
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->experienceReady:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->cashReady:Z

    iput-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    .line 47
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->serverCashReady:Z

    .line 48
    const-string/jumbo v0, "\u2014"

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->experience:Ljava/lang/String;

    iput-object v0, p0, Lcom/xyron/game/main/AngraHudReadout;->cash:Ljava/lang/String;

    return-void
.end method

.method serverCash(I)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/xyron/game/main/AngraHudReadout;->serverCashReady:Z

    invoke-virtual {p0, p1}, Lcom/xyron/game/main/AngraHudReadout;->cash(I)V

    return-void
.end method

.method vitals(IIII)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/xyron/game/main/AngraHudReadout;->percent(I)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/AngraHudReadout;->health:I

    invoke-static {p2}, Lcom/xyron/game/main/AngraHudReadout;->percent(I)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/AngraHudReadout;->armour:I

    invoke-static {p3}, Lcom/xyron/game/main/AngraHudReadout;->percent(I)I

    move-result p1

    iput p1, p0, Lcom/xyron/game/main/AngraHudReadout;->hunger:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xyron/game/main/AngraHudReadout;->vitalsReady:Z

    .line 23
    iget-boolean p1, p0, Lcom/xyron/game/main/AngraHudReadout;->serverCashReady:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/xyron/game/main/AngraHudReadout;->cash(I)V

    :cond_0
    return-void
.end method
