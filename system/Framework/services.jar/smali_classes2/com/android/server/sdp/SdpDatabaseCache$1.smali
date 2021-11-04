.class Lcom/android/server/sdp/SdpDatabaseCache$1;
.super Ljava/util/LinkedHashMap;
.source "SdpDatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sdp/SdpDatabaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5abdaf4ca421d56aL


# instance fields
.field final synthetic this$0:Lcom/android/server/sdp/SdpDatabaseCache;


# direct methods
.method constructor <init>(Lcom/android/server/sdp/SdpDatabaseCache;IFZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/sdp/SdpDatabaseCache;
    .param p2, "initialCapacity"    # I
    .param p3, "loadFactor"    # F
    .param p4, "accessOrder"    # Z

    .line 36
    iput-object p1, p0, Lcom/android/server/sdp/SdpDatabaseCache$1;->this$0:Lcom/android/server/sdp/SdpDatabaseCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 39
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/sdp/SdpDatabaseCache$1;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
