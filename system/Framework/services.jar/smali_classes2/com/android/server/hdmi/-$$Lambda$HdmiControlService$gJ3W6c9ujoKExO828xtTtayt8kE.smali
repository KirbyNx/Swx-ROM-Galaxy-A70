.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$HdmiControlService$gJ3W6c9ujoKExO828xtTtayt8kE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiControlService$gJ3W6c9ujoKExO828xtTtayt8kE;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiControlService$gJ3W6c9ujoKExO828xtTtayt8kE;->f$0:Z

    check-cast p1, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->lambda$announceHdmiCecVolumeControlFeatureChange$0(ZLandroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method
