.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$XDOvRhKaF08gf188gYRspWhfuH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$XDOvRhKaF08gf188gYRspWhfuH0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$XDOvRhKaF08gf188gYRspWhfuH0;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$XDOvRhKaF08gf188gYRspWhfuH0;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$XDOvRhKaF08gf188gYRspWhfuH0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$XDOvRhKaF08gf188gYRspWhfuH0;

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

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupShortcut$14(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
