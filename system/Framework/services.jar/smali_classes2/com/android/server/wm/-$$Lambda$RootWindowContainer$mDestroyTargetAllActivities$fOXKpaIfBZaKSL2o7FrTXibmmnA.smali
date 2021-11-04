.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;

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

    check-cast p1, Lcom/android/server/wm/RootWindowContainer;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/server/wm/WindowProcessController;

    check-cast p4, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method
