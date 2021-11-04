.class final enum Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
.super Ljava/lang/Enum;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "mWepKeyIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 212
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    .line 211
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 211
    const-class v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .registers 1

    .line 211
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method
