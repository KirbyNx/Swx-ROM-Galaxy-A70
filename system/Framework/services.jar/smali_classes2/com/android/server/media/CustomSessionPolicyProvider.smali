.class public Lcom/android/server/media/CustomSessionPolicyProvider;
.super Lcom/android/server/media/SessionPolicyProvider;
.source "CustomSessionPolicyProvider.java"


# instance fields
.field private final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/media/SessionPolicyProvider;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 32
    return-void
.end method


# virtual methods
.method getSessionPoliciesForApplication(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v1, "media_button_deny"

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/server/media/SessionPolicyProvider;->getSessionPoliciesForApplication(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
