.class public Lcom/android/server/notification/NmRune;
.super Ljava/lang/Object;
.source "NmRune.java"


# static fields
.field public static final NM_AOSP_BUGFIX:Z = true

.field public static final NM_AOSP_BUGFIX_AUTO_GROUP_ONGOING_POLICY:Z = true

.field public static final NM_AOSP_BUGFIX_BUBBLE_CONDITION:Z = true

.field public static final NM_AOSP_BUGFIX_CANCEL_AFTER_TIME_CHANGE:Z = true

.field public static final NM_AOSP_BUGFIX_CONCURRENT:Z = true

.field public static final NM_AOSP_BUGFIX_DELETE_RETAIL_MODE:Z = true

.field public static final NM_AOSP_BUGFIX_DND_ALLOW_CALL:Z = true

.field public static final NM_AOSP_BUGFIX_DND_POLICY:Z = true

.field public static final NM_AOSP_BUGFIX_LIMIT_MAX_NOTI_COUNT:Z = true

.field public static final NM_AOSP_BUGFIX_NOTIFICATION_TIMEOUT:Z = true

.field public static final NM_AOSP_BUGFIX_PREVENT_REMOTE_VIEW_REUSE:Z = true

.field public static final NM_AOSP_BUGFIX_REMOVE_NLS_COMPONENTS:Z = true

.field public static final NM_AOSP_BUGFIX_RESTORE_SOUND:Z = true

.field public static final NM_DND_ADD_API:Z = true

.field public static final NM_DND_BLOCK_AUDIO_INTERWORK:Z = true

.field public static final NM_DND_DEFAULT_VALUE:Z = true

.field public static final NM_DND_EXCEPTION_PACKAGE:Z = true

.field public static final NM_DND_RESTORE_CONCEPT:Z = true

.field public static final NM_DND_SNOOZE_BY_USER:Z = true

.field public static final NM_ETC_EASY_MUTE:Z = true

.field public static final NM_ETC_EFFECT_NOTI_FLASH:Z = true

.field public static final NM_ETC_GOOD_CATCH_TOAST:Z = true

.field public static final NM_ETC_KNOX_MANAGED_PROFILE:Z = false

.field public static final NM_ETC_NOTI_LOG_MANAGER:Z = false

.field public static final NM_ETC_RUNESTONE_LOGGING:Z = true

.field public static final NM_ETC_SECURE_FOLDER_SANITIZE:Z = true

.field public static final NM_ETC_SMART_ALERT:Z = true

.field public static final NM_ETC_SMART_SWITCH:Z = true

.field public static final NM_LOG:Z = true

.field public static final NM_LOG_DEBUG:Z

.field public static final NM_MANAGED_DEFAULT_SVC_PACKAGE:Z = true

.field public static final NM_MANAGED_NLS_DEFAULT_ACCESS:Z = true

.field public static final NM_POLICY_ALLOW_PKG_CONV_SECTION:Z = true

.field public static final NM_POLICY_AUTO_GROUP_COUNT:I = 0x4

.field public static final NM_POLICY_BLOCK_CONDITION:Z = true

.field public static final NM_POLICY_BYPASS_PERMISSION_FOR_SYSTEM:Z = true

.field public static final NM_POLICY_DISABLE_CALL_EDGE_LIGHTING:Z = true

.field public static final NM_POLICY_DISABLE_HEADSUP_WHEN_SMART_POPUP:Z = true

.field public static final NM_POLICY_FULLSCREEN_INTENT_FOR_BRIEF:Z = true

.field public static final NM_POLICY_LED_CONCEPT:Z = true

.field public static final NM_POLICY_MARK_SNOOZE_NOTI:Z = true

.field public static final NM_POLICY_NOTI_INCALL_CONCEPT:Z = true

.field public static final NM_POLICY_RESTRICT_EFFECT:Z = true

.field public static final NM_POLICY_SOUND_VOLUME:Z = true

.field public static final NM_POLICY_VIB_CONCEPT:Z = true

.field public static final NM_POLICY_VIB_PICKER_CONCEPT:Z

.field public static final NM_REMOTE_VIEW_NOTIFICATION_STRIP_SIZE:I = 0x6ddd0

.field public static final NM_SEM_ARE_NOTIFICATION_ENABLED_FOR_PACKAGE:Z = true

.field public static final NM_SEM_REGISTER_NOTIFICATION_LISTENER:Z = true

.field public static final NM_SEM_UPDATE_NOTIFICATION_CHANNEL:Z = true

.field public static final NM_SUPPORT_EDGE_LIGHTING:Z = true

.field public static final NM_SUPPORT_PUSH_SERVICE:Z

.field public static final NM_SUPPORT_SUB_DISPLAY_NOTIFICATION:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d524

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    .line 125
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NmRune;->NM_LOG_DEBUG:Z

    .line 131
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_ConfigStepSequenceType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service_tnc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_PUSH_SERVICE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
