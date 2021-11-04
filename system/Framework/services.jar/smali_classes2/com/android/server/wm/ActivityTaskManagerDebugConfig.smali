.class public Lcom/android/server/wm/ActivityTaskManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityTaskManagerDebugConfig.java"


# static fields
.field private static final APPEND_CATEGORY_NAME:Z = false

.field private static final ATM_DEBUG_CONFIG_SIZE:I = 0x18

.field static DEBUG_ACTIVITY_STARTS:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ALL:Z = false

.field private static DEBUG_ALL_ACTIVITIES:Z = false

.field static DEBUG_APP:Z = false

.field public static DEBUG_CLEANUP:Z = false

.field public static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field public static DEBUG_METRICS:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_SCREENSHOTS:Z

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field public static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field static final POSTFIX_APP:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field public static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field public static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field static final POSTFIX_SCREENSHOTS:Ljava/lang/String; = ""

.field static final POSTFIX_STACK:Ljava/lang/String; = ""

.field static final POSTFIX_STATES:Ljava/lang/String; = ""

.field public static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field static final TAG_ATM:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_DEBUG_CONFIG:Ljava/lang/String; = "ActivityTaskManagerDebugConfig"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    .line 52
    const/4 v1, 0x1

    if-nez v0, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 53
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 54
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 55
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 56
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 57
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 58
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 59
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 60
    if-nez v0, :cond_24

    move v2, v0

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 61
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_2d

    move v2, v0

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 62
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    .line 63
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_38

    move v2, v0

    goto :goto_39

    :cond_38
    move v2, v1

    :goto_39
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    .line 64
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 65
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    .line 66
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 67
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 68
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_49

    move v2, v0

    goto :goto_4a

    :cond_49
    move v2, v1

    :goto_4a
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 69
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_52

    move v2, v0

    goto :goto_53

    :cond_52
    move v2, v1

    :goto_53
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 70
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_5b

    move v2, v0

    goto :goto_5c

    :cond_5b
    move v2, v1

    :goto_5c
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 71
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 72
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 73
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 74
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    .line 75
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 76
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    .line 80
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_6f

    goto :goto_70

    :cond_6f
    move v0, v1

    :goto_70
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reconfigureDebug([Z)V
    .registers 6
    .param p0, "atm_debug"    # [Z

    .line 111
    array-length v0, p0

    const-string v1, "ActivityTaskManagerDebugConfig"

    const/16 v2, 0x18

    if-eq v0, v2, :cond_22

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atm_debug.length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not proper"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_22
    const/4 v0, 0x0

    .line 116
    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    .line 117
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_37

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_35

    move v2, v0

    goto :goto_37

    :cond_35
    move v2, v3

    goto :goto_39

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_37
    :goto_37
    move v0, v2

    move v2, v4

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_39
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 118
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 119
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_4f

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_4d

    move v2, v0

    goto :goto_4f

    :cond_4d
    move v2, v3

    goto :goto_51

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_4f
    :goto_4f
    move v0, v2

    move v2, v4

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_51
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 120
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 121
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 122
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 123
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 124
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 125
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 126
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_81

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_7f

    move v2, v0

    goto :goto_81

    :cond_7f
    move v2, v3

    goto :goto_83

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_81
    :goto_81
    move v0, v2

    move v2, v4

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_83
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 127
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    .line 128
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_99

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_97

    move v2, v0

    goto :goto_99

    :cond_97
    move v2, v3

    goto :goto_9b

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_99
    :goto_99
    move v0, v2

    move v2, v4

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_9b
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    .line 129
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 130
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    .line 131
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 132
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 133
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_c3

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_c1

    move v0, v2

    goto :goto_c3

    :cond_c1
    move v0, v3

    goto :goto_c5

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_c3
    :goto_c3
    move v2, v0

    move v0, v4

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :goto_c5
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 134
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_d5

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_d3

    move v2, v0

    goto :goto_d5

    :cond_d3
    move v2, v3

    goto :goto_d7

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_d5
    :goto_d5
    move v0, v2

    move v2, v4

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_d7
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 135
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v2, :cond_e4

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_e6

    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_e4
    move v2, v0

    move v3, v4

    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_e6
    sput-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 136
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 137
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 138
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 139
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-boolean v0, p0, v0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 140
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-boolean v2, p0, v2

    sput-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    .line 142
    const-string/jumbo v2, "reconfigureDebug finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
