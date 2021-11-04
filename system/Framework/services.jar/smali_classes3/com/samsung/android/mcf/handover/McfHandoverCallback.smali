.class public abstract Lcom/samsung/android/mcf/handover/McfHandoverCallback;
.super Ljava/lang/Object;
.source "McfHandoverCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    return-void
.end method

.method public onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    return-void
.end method

.method public onHandoverRequest(Lcom/samsung/android/mcf/McfDevice;II)V
    .registers 4

    return-void
.end method

.method public onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    return-void
.end method

.method public onReceiveHandoverResponse(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    return-void
.end method
