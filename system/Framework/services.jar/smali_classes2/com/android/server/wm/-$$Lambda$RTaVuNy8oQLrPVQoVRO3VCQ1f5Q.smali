.class public final synthetic Lcom/android/server/wm/-$$Lambda$RTaVuNy8oQLrPVQoVRO3VCQ1f5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RTaVuNy8oQLrPVQoVRO3VCQ1f5Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RTaVuNy8oQLrPVQoVRO3VCQ1f5Q;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RTaVuNy8oQLrPVQoVRO3VCQ1f5Q;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RTaVuNy8oQLrPVQoVRO3VCQ1f5Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RTaVuNy8oQLrPVQoVRO3VCQ1f5Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3, p4}, Landroid/app/ActivityManagerInternal;->killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V

    return-void
.end method
