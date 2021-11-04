.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$sxli86twTJdrXqdv6aIAvfBRA_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$UserController$sxli86twTJdrXqdv6aIAvfBRA_Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$UserController$sxli86twTJdrXqdv6aIAvfBRA_Q;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$UserController$sxli86twTJdrXqdv6aIAvfBRA_Q;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$UserController$sxli86twTJdrXqdv6aIAvfBRA_Q;->INSTANCE:Lcom/android/server/am/-$$Lambda$UserController$sxli86twTJdrXqdv6aIAvfBRA_Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocked$3()V

    return-void
.end method
