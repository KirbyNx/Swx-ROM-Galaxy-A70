.class public abstract Lsamsung/uwb/RangingCallback;
.super Ljava/lang/Object;
.source "RangingCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRangingDataReceived(Lsamsung/uwb/RangingMeasure;)V
.end method

.method public abstract onRangingStatusReceived(I)V
.end method
