.class public final enum Lcom/samsung/android/mcf/common/McfSdkFeature;
.super Ljava/lang/Enum;
.source "McfSdkFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mcf/common/McfSdkFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;


# instance fields
.field public final feature:I

.field public final minSupportVersion:I

.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 13
    new-instance v6, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v1, "MusicShare"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x1ae14

    const-string v5, "MusicShare"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/mcf/common/McfSdkFeature;->MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 14
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v8, "WifiTogether"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const v11, 0x1afa4

    const-string v12, "WifiTogether"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 15
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v2, "UWBRanging"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const v5, 0x1afa4

    const-string v6, "UWBRanging"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 16
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v8, "BleAdapter"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v12, "BleAdapter"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 17
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v2, "BleProvider"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const v5, 0x1fbd0

    const-string v6, "BleProvider"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 18
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v8, "SmcfCCC"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const v11, 0x1d4c0

    const-string v12, "SmcfCCC"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 19
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v2, "Messaging"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const v5, 0x1afa4

    const-string v6, "Messaging"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 5
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/android/mcf/common/McfSdkFeature;->$VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->feature:I

    .line 28
    iput p4, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->minSupportVersion:I

    .line 29
    iput-object p5, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mcf/common/McfSdkFeature;
    .registers 2

    .line 5
    const-class v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mcf/common/McfSdkFeature;
    .registers 1

    .line 5
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->$VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/mcf/common/McfSdkFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-object v0
.end method


# virtual methods
.method public getFeatureValue()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->feature:I

    return v0
.end method

.method public getSupportVersion()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->minSupportVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->name:Ljava/lang/String;

    return-object v0
.end method
