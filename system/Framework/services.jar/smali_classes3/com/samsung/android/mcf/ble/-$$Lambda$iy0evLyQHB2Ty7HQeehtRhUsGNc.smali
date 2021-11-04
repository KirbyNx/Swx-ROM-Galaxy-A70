.class public final synthetic Lcom/samsung/android/mcf/ble/-$$Lambda$iy0evLyQHB2Ty7HQeehtRhUsGNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/le/ScanFilter$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/le/ScanFilter$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$iy0evLyQHB2Ty7HQeehtRhUsGNc;->f$0:Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$iy0evLyQHB2Ty7HQeehtRhUsGNc;->f$0:Landroid/bluetooth/le/ScanFilter$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method
