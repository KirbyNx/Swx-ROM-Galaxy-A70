.class public final synthetic Lcom/android/server/input/-$$Lambda$InputManagerService$40$fV7G11JR2kDFbC4kjLqkUZzmq-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService$40;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService$40;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/-$$Lambda$InputManagerService$40$fV7G11JR2kDFbC4kjLqkUZzmq-s;->f$0:Lcom/android/server/input/InputManagerService$40;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/input/-$$Lambda$InputManagerService$40$fV7G11JR2kDFbC4kjLqkUZzmq-s;->f$0:Lcom/android/server/input/InputManagerService$40;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$40;->lambda$onReceive$0$InputManagerService$40()V

    return-void
.end method
