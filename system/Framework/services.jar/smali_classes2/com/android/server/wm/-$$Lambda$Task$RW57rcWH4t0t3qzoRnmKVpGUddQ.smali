.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;

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

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/Task;->lambda$initializeChangeTransition$5(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
