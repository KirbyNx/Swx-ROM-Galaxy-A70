.class Lsamsung/uwb/UwbAdapter$2$1;
.super Ljava/lang/Object;
.source "UwbAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsamsung/uwb/UwbAdapter$2;->onRangingDataReceived(Lsamsung/uwb/RangingMeasure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsamsung/uwb/UwbAdapter$2;

.field final synthetic val$rangingMeasure:Lsamsung/uwb/RangingMeasure;


# direct methods
.method constructor <init>(Lsamsung/uwb/UwbAdapter$2;Lsamsung/uwb/RangingMeasure;)V
    .registers 3
    .param p1, "this$1"    # Lsamsung/uwb/UwbAdapter$2;

    .line 725
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter$2$1;->this$1:Lsamsung/uwb/UwbAdapter$2;

    iput-object p2, p0, Lsamsung/uwb/UwbAdapter$2$1;->val$rangingMeasure:Lsamsung/uwb/RangingMeasure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 728
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$2$1;->this$1:Lsamsung/uwb/UwbAdapter$2;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$2;->val$callback:Lsamsung/uwb/RangingCallback;

    if-eqz v0, :cond_f

    .line 729
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$2$1;->this$1:Lsamsung/uwb/UwbAdapter$2;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$2;->val$callback:Lsamsung/uwb/RangingCallback;

    iget-object v1, p0, Lsamsung/uwb/UwbAdapter$2$1;->val$rangingMeasure:Lsamsung/uwb/RangingMeasure;

    invoke-virtual {v0, v1}, Lsamsung/uwb/RangingCallback;->onRangingDataReceived(Lsamsung/uwb/RangingMeasure;)V

    .line 730
    :cond_f
    return-void
.end method
