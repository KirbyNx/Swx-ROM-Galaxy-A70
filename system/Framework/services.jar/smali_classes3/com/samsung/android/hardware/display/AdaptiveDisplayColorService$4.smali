.class Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 690
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .line 693
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 694
    return-void
.end method
