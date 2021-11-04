.class Lcom/android/server/bridge/BridgeProxy$PolicyChanged;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicyChanged"
.end annotation


# instance fields
.field public personaId:I

.field public policyName:Ljava/lang/String;

.field public syncerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "syncerName"    # Ljava/lang/String;
    .param p3, "policyName"    # Ljava/lang/String;

    .line 2201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2202
    iput p1, p0, Lcom/android/server/bridge/BridgeProxy$PolicyChanged;->personaId:I

    .line 2203
    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy$PolicyChanged;->syncerName:Ljava/lang/String;

    .line 2204
    iput-object p3, p0, Lcom/android/server/bridge/BridgeProxy$PolicyChanged;->policyName:Ljava/lang/String;

    .line 2205
    return-void
.end method
