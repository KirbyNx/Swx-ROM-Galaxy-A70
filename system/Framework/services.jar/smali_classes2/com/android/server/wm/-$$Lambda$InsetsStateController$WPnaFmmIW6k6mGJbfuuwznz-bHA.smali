.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1}, Lcom/android/server/wm/InsetsStateController;->lambda$addToControlMaps$4(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
