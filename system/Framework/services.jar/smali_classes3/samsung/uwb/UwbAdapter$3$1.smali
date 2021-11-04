.class Lsamsung/uwb/UwbAdapter$3$1;
.super Ljava/lang/Object;
.source "UwbAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsamsung/uwb/UwbAdapter$3;->onRangingDataReceived(Lsamsung/uwb/RangingData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsamsung/uwb/UwbAdapter$3;

.field final synthetic val$rangingData:Lsamsung/uwb/RangingData;


# direct methods
.method constructor <init>(Lsamsung/uwb/UwbAdapter$3;Lsamsung/uwb/RangingData;)V
    .registers 3
    .param p1, "this$1"    # Lsamsung/uwb/UwbAdapter$3;

    .line 763
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter$3$1;->this$1:Lsamsung/uwb/UwbAdapter$3;

    iput-object p2, p0, Lsamsung/uwb/UwbAdapter$3$1;->val$rangingData:Lsamsung/uwb/RangingData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 766
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$3$1;->this$1:Lsamsung/uwb/UwbAdapter$3;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$3;->val$callback:Lsamsung/uwb/UwbCallback;

    if-eqz v0, :cond_f

    .line 767
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$3$1;->this$1:Lsamsung/uwb/UwbAdapter$3;

    iget-object v0, v0, Lsamsung/uwb/UwbAdapter$3;->val$callback:Lsamsung/uwb/UwbCallback;

    iget-object v1, p0, Lsamsung/uwb/UwbAdapter$3$1;->val$rangingData:Lsamsung/uwb/RangingData;

    invoke-virtual {v0, v1}, Lsamsung/uwb/UwbCallback;->onRangingDataReceived(Lsamsung/uwb/RangingData;)V

    .line 768
    :cond_f
    return-void
.end method
