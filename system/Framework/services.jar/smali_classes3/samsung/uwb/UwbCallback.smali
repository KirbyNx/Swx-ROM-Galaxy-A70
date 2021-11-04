.class public abstract Lsamsung/uwb/UwbCallback;
.super Ljava/lang/Object;
.source "UwbCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRangingDataReceived(Lsamsung/uwb/RangingData;)V
.end method

.method public abstract onSessionStatusChanged(II)V
.end method
