.class Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointerDownInfo"
.end annotation


# instance fields
.field private mTime:J

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/gestures/TouchState;

    .line 575
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 575
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 575
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 575
    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-wide v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 588
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    .line 590
    return-void
.end method

.method public set(FFJ)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .line 581
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 582
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 583
    iput-wide p3, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    .line 584
    return-void
.end method
