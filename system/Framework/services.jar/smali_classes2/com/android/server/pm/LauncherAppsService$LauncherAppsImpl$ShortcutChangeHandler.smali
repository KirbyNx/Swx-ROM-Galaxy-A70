.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutChangeHandler"
.end annotation


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IShortcutChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Landroid/os/UserManagerInternal;)V
    .registers 3
    .param p1, "userManager"    # Landroid/os/UserManagerInternal;

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1144
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1145
    return-void
.end method

.method public static filterShortcutsByQuery(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/ShortcutQueryWrapper;Z)Ljava/util/List;
    .registers 24
    .param p0, "packageName"    # Ljava/lang/String;
    .param p2, "query"    # Landroid/content/pm/ShortcutQueryWrapper;
    .param p3, "shortcutsRemoved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1211
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    move-result-wide v0

    .line 1212
    .local v0, "changedSince":J
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "queryPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object v3

    .line 1214
    .local v3, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object v4

    .line 1215
    .local v4, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1216
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v6

    .line 1218
    .local v6, "flags":I
    if-eqz v2, :cond_24

    move-object/from16 v7, p0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 1219
    const/4 v8, 0x0

    return-object v8

    .line 1218
    :cond_24
    move-object/from16 v7, p0

    .line 1222
    :cond_26
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v8, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_33

    move v9, v10

    goto :goto_34

    :cond_33
    move v9, v11

    .line 1225
    .local v9, "matchDynamic":Z
    :goto_34
    and-int/lit8 v12, v6, 0x2

    if-eqz v12, :cond_3a

    move v12, v10

    goto :goto_3b

    :cond_3a
    move v12, v11

    .line 1226
    .local v12, "matchPinned":Z
    :goto_3b
    and-int/lit8 v13, v6, 0x8

    if-eqz v13, :cond_41

    move v13, v10

    goto :goto_42

    :cond_41
    move v13, v11

    .line 1227
    .local v13, "matchManifest":Z
    :goto_42
    and-int/lit8 v14, v6, 0x10

    if-eqz v14, :cond_48

    move v14, v10

    goto :goto_49

    :cond_48
    move v14, v11

    .line 1228
    .local v14, "matchCached":Z
    :goto_49
    if-eqz v9, :cond_4c

    goto :goto_4d

    :cond_4c
    move v10, v11

    .line 1229
    :goto_4d
    if-eqz v12, :cond_51

    const/4 v15, 0x2

    goto :goto_52

    :cond_51
    move v15, v11

    :goto_52
    or-int/2addr v10, v15

    .line 1230
    if-eqz v13, :cond_58

    const/16 v15, 0x20

    goto :goto_59

    :cond_58
    move v15, v11

    :goto_59
    or-int/2addr v10, v15

    .line 1231
    if-eqz v14, :cond_5f

    const v11, 0x40004000    # 2.0039062f

    :cond_5f
    or-int/2addr v10, v11

    .line 1233
    .local v10, "shortcutFlags":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_61
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_c0

    .line 1234
    move-object/from16 v15, p1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "queryPackage":Ljava/lang/String;
    .local v17, "queryPackage":Ljava/lang/String;
    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1236
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v5, :cond_82

    move/from16 v16, v6

    .end local v6    # "flags":I
    .local v16, "flags":I
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    .line 1237
    goto :goto_b9

    .line 1236
    .end local v16    # "flags":I
    .restart local v6    # "flags":I
    :cond_82
    move/from16 v16, v6

    .line 1239
    .end local v6    # "flags":I
    .restart local v16    # "flags":I
    :cond_84
    const-wide/16 v18, 0x0

    cmp-long v6, v0, v18

    if-eqz v6, :cond_93

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v18

    cmp-long v6, v0, v18

    if-lez v6, :cond_93

    .line 1240
    goto :goto_b9

    .line 1242
    :cond_93
    if-eqz v3, :cond_a0

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 1243
    goto :goto_b9

    .line 1245
    :cond_a0
    if-eqz v4, :cond_ad

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ad

    .line 1246
    goto :goto_b9

    .line 1248
    :cond_ad
    if-nez p3, :cond_b6

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    and-int/2addr v6, v10

    if-eqz v6, :cond_b9

    .line 1249
    :cond_b6
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_b9
    :goto_b9
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v16

    move-object/from16 v2, v17

    goto :goto_61

    .line 1253
    .end local v11    # "i":I
    .end local v16    # "flags":I
    .end local v17    # "queryPackage":Ljava/lang/String;
    .local v2, "queryPackage":Ljava/lang/String;
    .restart local v6    # "flags":I
    :cond_c0
    return-object v8
.end method

.method private hasUserAccess(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "callbackUser"    # Landroid/os/UserHandle;
    .param p2, "shortcutUser"    # Landroid/os/UserHandle;

    .line 1257
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1258
    .local v0, "callbackUserId":I
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1260
    .local v1, "shortcutUserId":I
    if-ne p2, p1, :cond_c

    const/4 v2, 0x1

    return v2

    .line 1261
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "shortcutsRemoved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)V"
        }
    .end annotation

    .line 1175
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1177
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_42

    .line 1178
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IShortcutChangeCallback;

    .line 1179
    .local v2, "callback":Landroid/content/pm/IShortcutChangeCallback;
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1181
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1183
    .local v3, "cookie":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/UserHandle;

    .line 1184
    .local v4, "callbackUser":Landroid/os/UserHandle;
    if-eqz v4, :cond_26

    invoke-direct {p0, v4, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->hasUserAccess(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1186
    goto :goto_3f

    .line 1190
    :cond_26
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-static {p1, p2, v5, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->filterShortcutsByQuery(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/ShortcutQueryWrapper;Z)Ljava/util/List;

    move-result-object v5

    .line 1192
    .local v5, "matchedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 1194
    if-eqz p4, :cond_3a

    .line 1195
    :try_start_36
    invoke-interface {v2, p1, v5, p3}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_3d

    .line 1197
    :cond_3a
    invoke-interface {v2, p1, v5, p3}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 1201
    :goto_3d
    goto :goto_3f

    .line 1199
    :catch_3e
    move-exception v6

    .line 1177
    .end local v2    # "callback":Landroid/content/pm/IShortcutChangeCallback;
    .end local v3    # "cookie":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;>;"
    .end local v4    # "callbackUser":Landroid/os/UserHandle;
    .end local v5    # "matchedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1205
    .end local v1    # "i":I
    :cond_42
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1206
    return-void
.end method


# virtual methods
.method public declared-synchronized addShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/pm/IShortcutChangeCallback;
    .param p2, "query"    # Landroid/content/pm/ShortcutQueryWrapper;
    .param p3, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 1152
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1153
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1154
    monitor-exit p0

    return-void

    .line 1151
    .end local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
    .end local p1    # "callback":Landroid/content/pm/IShortcutChangeCallback;
    .end local p2    # "query":Landroid/content/pm/ShortcutQueryWrapper;
    .end local p3    # "user":Landroid/os/UserHandle;
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1164
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 1165
    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1170
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 1171
    return-void
.end method

.method public declared-synchronized removeShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IShortcutChangeCallback;

    monitor-enter p0

    .line 1158
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1159
    monitor-exit p0

    return-void

    .line 1157
    .end local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
    .end local p1    # "callback":Landroid/content/pm/IShortcutChangeCallback;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
