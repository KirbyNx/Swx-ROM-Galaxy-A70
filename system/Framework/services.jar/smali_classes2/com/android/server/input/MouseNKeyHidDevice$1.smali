.class Lcom/android/server/input/MouseNKeyHidDevice$1;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 140
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$1;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 143
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 144
    return-void
.end method
