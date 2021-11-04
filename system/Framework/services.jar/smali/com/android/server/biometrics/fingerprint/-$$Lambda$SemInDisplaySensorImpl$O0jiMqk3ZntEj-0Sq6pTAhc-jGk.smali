.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$O0jiMqk3ZntEj-0Sq6pTAhc-jGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$O0jiMqk3ZntEj-0Sq6pTAhc-jGk;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$O0jiMqk3ZntEj-0Sq6pTAhc-jGk;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->lambda$setTspMode$2(Ljava/lang/String;)V

    return-void
.end method
