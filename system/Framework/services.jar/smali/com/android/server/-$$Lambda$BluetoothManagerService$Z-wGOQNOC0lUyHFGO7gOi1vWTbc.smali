.class public final synthetic Lcom/android/server/-$$Lambda$BluetoothManagerService$Z-wGOQNOC0lUyHFGO7gOi1vWTbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$getPropertyCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BluetoothManagerService$Z-wGOQNOC0lUyHFGO7gOi1vWTbc;->f$0:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BluetoothManagerService$Z-wGOQNOC0lUyHFGO7gOi1vWTbc;->f$0:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/BluetoothManagerService;->lambda$getProperty$1(Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V

    return-void
.end method
