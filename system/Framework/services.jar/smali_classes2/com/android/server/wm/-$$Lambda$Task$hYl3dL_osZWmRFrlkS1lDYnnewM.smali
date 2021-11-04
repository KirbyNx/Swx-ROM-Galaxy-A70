.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, [I

    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->lambda$getDescendantTaskCount$8(Lcom/android/server/wm/Task;[I)V

    return-void
.end method
