.class Lsamsung/uwb/UwbAdapter$2$2;
.super Ljava/lang/Object;
.source "UwbAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsamsung/uwb/UwbAdapter$2;->onRangingStatusReceived(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsamsung/uwb/UwbAdapter$2;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lsamsung/uwb/UwbAdapter$2;I)V
    .registers 3
    .param p1, "this$1"    # Lsamsung/uwb/UwbAdapter$2;

    .line 736
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter$2$2;->this$1:Lsamsung/uwb/UwbAdapter$2;

    iput p2, p0, Lsamsung/uwb/UwbAdapter$2$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 739
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$2$2;->this$1:Lsamsung/uwb/UwbAdapter$2;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$2;->val$callback:Lsamsung/uwb/RangingCallback;

    if-eqz v0, :cond_f

    .line 740
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$2$2;->this$1:Lsamsung/uwb/UwbAdapter$2;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$2;->val$callback:Lsamsung/uwb/RangingCallback;

    iget v1, p0, Lsamsung/uwb/UwbAdapter$2$2;->val$status:I

    invoke-virtual {v0, v1}, Lsamsung/uwb/RangingCallback;->onRangingStatusReceived(I)V

    .line 741
    :cond_f
    return-void
.end method
