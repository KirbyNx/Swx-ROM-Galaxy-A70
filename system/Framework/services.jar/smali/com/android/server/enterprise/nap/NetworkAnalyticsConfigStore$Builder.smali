.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public adminUid:I

.field public flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public jsonString:Ljava/lang/String;

.field public opUserId:I

.field public packageName:Ljava/lang/String;

.field public packageSignature:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1061
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    .line 1063
    return-void
.end method


# virtual methods
.method public adminUid(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # I

    .line 1096
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    .line 1097
    return-object p0
.end method

.method public build()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 3

    .line 1131
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {v0, v1, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V

    return-object v0
.end method

.method public flags(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # I

    .line 1103
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    .line 1104
    return-object p0
.end method

.method public flowTypeForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # I

    .line 1117
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    .line 1118
    return-object p0
.end method

.method public intervalValueForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # I

    .line 1124
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    .line 1125
    return-object p0
.end method

.method public jsonString(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1075
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    .line 1076
    return-object p0
.end method

.method public opUserId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # I

    .line 1068
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    .line 1069
    return-object p0
.end method

.method public packageName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1082
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    .line 1083
    return-object p0
.end method

.method public packageSignature(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1089
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    .line 1090
    return-object p0
.end method

.method public userId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .registers 2
    .param p1, "val"    # I

    .line 1110
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    .line 1111
    return-object p0
.end method
