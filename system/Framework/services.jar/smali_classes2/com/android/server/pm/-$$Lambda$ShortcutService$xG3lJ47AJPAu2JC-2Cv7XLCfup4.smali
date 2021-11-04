.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$xG3lJ47AJPAu2JC-2Cv7XLCfup4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$xG3lJ47AJPAu2JC-2Cv7XLCfup4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$xG3lJ47AJPAu2JC-2Cv7XLCfup4;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$xG3lJ47AJPAu2JC-2Cv7XLCfup4;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$xG3lJ47AJPAu2JC-2Cv7XLCfup4;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$xG3lJ47AJPAu2JC-2Cv7XLCfup4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$verifyStatesInner$21(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method
