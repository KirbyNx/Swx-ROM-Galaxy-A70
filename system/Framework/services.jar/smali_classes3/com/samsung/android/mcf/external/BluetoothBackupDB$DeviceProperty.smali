.class public Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
.super Ljava/lang/Object;
.source "BluetoothBackupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothBackupDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceProperty"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mBondState:I

.field public mManufacturerData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
