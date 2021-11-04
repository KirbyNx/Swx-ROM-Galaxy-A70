.class Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarWindow"
.end annotation


# instance fields
.field private final mId:I

.field private mState:I

.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .registers 3
    .param p2, "id"    # I

    .line 595
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 596
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 597
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy$BarWindow;
    .param p1, "x1"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "x2"    # I

    .line 589
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method private setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .line 615
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    .line 616
    .local v0, "state":I
    :goto_5
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq v1, v0, :cond_24

    .line 617
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 618
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$600(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 619
    # getter for: Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 618
    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    .line 621
    :cond_24
    return-void
.end method

.method private updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 6
    .param p1, "controlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->access$500(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    .line 604
    invoke-direct {p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    .line 605
    return-void

    .line 609
    :cond_d
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 610
    .local v0, "controllingWin":Lcom/android/server/wm/WindowState;
    :goto_16
    if-eqz v0, :cond_22

    .line 611
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const/4 v1, 0x1

    .line 610
    :cond_23
    invoke-direct {p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    .line 612
    return-void
.end method
