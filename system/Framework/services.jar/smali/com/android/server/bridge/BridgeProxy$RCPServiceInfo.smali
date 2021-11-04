.class Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RCPServiceInfo"
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "|"


# instance fields
.field public packageName:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V
    .registers 5
    .param p2, "packageNameAndServiceName"    # Ljava/lang/String;

    .line 1974
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    const-string p1, "<NONE>"

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1972
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1975
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfo: packageNameAndServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2d

    goto :goto_5e

    .line 1980
    :cond_2d
    const-string/jumbo p1, "|"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 1981
    .local p1, "index":I
    const/4 v0, 0x1

    if-lt p1, v0, :cond_54

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_40

    goto :goto_54

    .line 1987
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1988
    add-int/lit8 v0, p1, 0x1

    .line 1989
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1988
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1991
    return-void

    .line 1982
    :cond_54
    :goto_54
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceInfo: index < 1 || (index+ 1) == packageNameAndServiceName.length()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    return-void

    .line 1977
    .end local p1    # "index":I
    :cond_5e
    :goto_5e
    return-void
.end method
