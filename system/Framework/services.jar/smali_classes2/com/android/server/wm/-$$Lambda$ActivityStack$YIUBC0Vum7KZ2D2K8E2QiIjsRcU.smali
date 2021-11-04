.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/ActivityStack;->lambda$finishAllActivitiesImmediately$7(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
