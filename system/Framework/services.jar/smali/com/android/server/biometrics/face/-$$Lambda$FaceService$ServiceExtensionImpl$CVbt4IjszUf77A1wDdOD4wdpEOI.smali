.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$CVbt4IjszUf77A1wDdOD4wdpEOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$CVbt4IjszUf77A1wDdOD4wdpEOI;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$CVbt4IjszUf77A1wDdOD4wdpEOI;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->lambda$stopOperation$1$FaceService$ServiceExtensionImpl()V

    return-void
.end method
