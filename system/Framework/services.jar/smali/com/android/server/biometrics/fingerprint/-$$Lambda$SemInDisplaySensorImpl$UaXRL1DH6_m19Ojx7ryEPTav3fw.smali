.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$UaXRL1DH6_m19Ojx7ryEPTav3fw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$UaXRL1DH6_m19Ojx7ryEPTav3fw;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$UaXRL1DH6_m19Ojx7ryEPTav3fw;->f$0:Z

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->lambda$setTspLpMode$1(Z)V

    return-void
.end method
