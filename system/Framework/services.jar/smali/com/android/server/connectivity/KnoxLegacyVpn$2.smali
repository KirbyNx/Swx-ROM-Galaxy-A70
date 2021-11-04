.class Lcom/android/server/connectivity/KnoxLegacyVpn$2;
.super Landroid/net/NetworkAgent;
.source "KnoxLegacyVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;)V
    .registers 21
    .param p1, "this$0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "config"    # Landroid/net/NetworkAgentConfig;

    .line 413
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lcom/android/server/connectivity/KnoxLegacyVpn$2;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;)V

    return-void
.end method


# virtual methods
.method public unwanted()V
    .registers 1

    .line 415
    return-void
.end method
