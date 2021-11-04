.class Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 2019
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2022
    :try_start_0
    const-string v0, "edmnativehelperservice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    .line 2025
    :catch_6
    move-exception v0

    .line 2026
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_10

    .line 2023
    .end local v0    # "e":Ljava/lang/Error;
    :catch_b
    move-exception v0

    .line 2024
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2027
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    nop

    .line 2028
    :goto_10
    return-void
.end method
