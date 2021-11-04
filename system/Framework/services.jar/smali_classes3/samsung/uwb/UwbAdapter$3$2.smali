.class Lsamsung/uwb/UwbAdapter$3$2;
.super Ljava/lang/Object;
.source "UwbAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsamsung/uwb/UwbAdapter$3;->onSessionStatusChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsamsung/uwb/UwbAdapter$3;

.field final synthetic val$reasonCode:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lsamsung/uwb/UwbAdapter$3;II)V
    .registers 4
    .param p1, "this$1"    # Lsamsung/uwb/UwbAdapter$3;

    .line 774
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter$3$2;->this$1:Lsamsung/uwb/UwbAdapter$3;

    iput p2, p0, Lsamsung/uwb/UwbAdapter$3$2;->val$status:I

    iput p3, p0, Lsamsung/uwb/UwbAdapter$3$2;->val$reasonCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 777
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$3$2;->this$1:Lsamsung/uwb/UwbAdapter$3;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$3;->val$callback:Lsamsung/uwb/UwbCallback;

    if-eqz v0, :cond_11

    .line 778
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$3$2;->this$1:Lsamsung/uwb/UwbAdapter$3;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$3;->val$callback:Lsamsung/uwb/UwbCallback;

    iget v1, p0, Lsamsung/uwb/UwbAdapter$3$2;->val$status:I

    iget v2, p0, Lsamsung/uwb/UwbAdapter$3$2;->val$reasonCode:I

    invoke-virtual {v0, v1, v2}, Lsamsung/uwb/UwbCallback;->onSessionStatusChanged(II)V

    .line 779
    :cond_11
    return-void
.end method
