.class public final synthetic Lcom/android/server/am/-$$Lambda$CoreSettingsObserver$IEGGdL9JzvkvDo5ePJ2OAMEVAVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CoreSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CoreSettingsObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$CoreSettingsObserver$IEGGdL9JzvkvDo5ePJ2OAMEVAVs;->f$0:Lcom/android/server/am/CoreSettingsObserver;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$CoreSettingsObserver$IEGGdL9JzvkvDo5ePJ2OAMEVAVs;->f$0:Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CoreSettingsObserver;->lambda$beginObserveCoreSettings$0$CoreSettingsObserver(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
