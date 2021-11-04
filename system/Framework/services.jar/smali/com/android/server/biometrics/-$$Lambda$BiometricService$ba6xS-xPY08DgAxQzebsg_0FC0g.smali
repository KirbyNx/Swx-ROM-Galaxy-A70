.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$ba6xS-xPY08DgAxQzebsg_0FC0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$ba6xS-xPY08DgAxQzebsg_0FC0g;->f$0:Lcom/android/server/biometrics/BiometricService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$ba6xS-xPY08DgAxQzebsg_0FC0g;->f$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->lambda$ba6xS-xPY08DgAxQzebsg_0FC0g(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method
