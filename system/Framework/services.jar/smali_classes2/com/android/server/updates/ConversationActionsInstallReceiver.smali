.class public Lcom/android/server/updates/ConversationActionsInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "ConversationActionsInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 22
    const-string v0, "/data/misc/textclassifier/"

    const-string v1, "actions_suggestions.model"

    const-string/jumbo v2, "metadata/actions_suggestions"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected verifyVersion(II)Z
    .registers 4
    .param p1, "current"    # I
    .param p2, "alternative"    # I

    .line 31
    const/4 v0, 0x1

    return v0
.end method
