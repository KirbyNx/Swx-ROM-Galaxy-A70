.class Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;
.super Ljava/lang/Object;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub;

    .line 1048
    iput-object p1, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;->this$0:Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/lang/String;)V
    .registers 5
    .param p1, "retval"    # I
    .param p2, "outbuf"    # Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1053
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1055
    return-void
.end method
