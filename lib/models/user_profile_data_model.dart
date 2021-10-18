// // To parse this JSON data, do
// //
// //     final userProfileDataModel = userProfileDataModelFromJson(jsonString);

// import 'dart:convert';

// UserProfileDataModel userProfileDataModelFromJson(String str) =>
//     UserProfileDataModel.fromJson(json.decode(str));

// String userProfileDataModelToJson(UserProfileDataModel data) =>
//     json.encode(data.toJson());

// class UserProfileDataModel {
//   UserProfileDataModel({
//     this.seoCategoryInfos,
//     this.loggingPageId,
//     this.showSuggestedProfiles,
//     this.showFollowDialog,
//     this.graphql,
//     this.toastContentOnLoad,
//     this.showViewShop,
//     this.profilePicEditSyncProps,
//     this.alwaysShowMessageButtonToProAccount,
//   });

//   List<List<String>>? seoCategoryInfos;
//   String? loggingPageId;
//   bool? showSuggestedProfiles;
//   bool? showFollowDialog;
//   Graphql? graphql;
//   dynamic toastContentOnLoad;
//   bool? showViewShop;
//   ProfilePicEditSyncProps? profilePicEditSyncProps;
//   bool? alwaysShowMessageButtonToProAccount;

//   factory UserProfileDataModel.fromJson(Map<String, dynamic> json) =>
//       UserProfileDataModel(
//         seoCategoryInfos: List<List<String>>.from(json["seo_category_infos"]
//             .map((x) => List<String>.from(x.map((x) => x)))),
//         loggingPageId: json["logging_page_id"],
//         showSuggestedProfiles: json["show_suggested_profiles"],
//         showFollowDialog: json["show_follow_dialog"],
//         graphql: Graphql.fromJson(json["graphql"]),
//         toastContentOnLoad: json["toast_content_on_load"],
//         showViewShop: json["show_view_shop"],
//         profilePicEditSyncProps: ProfilePicEditSyncProps.fromJson(
//             json["profile_pic_edit_sync_props"]),
//         alwaysShowMessageButtonToProAccount:
//             json["always_show_message_button_to_pro_account"],
//       );

//   Map<String, dynamic> toJson() => {
//         "seo_category_infos": List<dynamic>.from(
//             seoCategoryInfos!.map((x) => List<dynamic>.from(x.map((x) => x)))),
//         "logging_page_id": loggingPageId,
//         "show_suggested_profiles": showSuggestedProfiles,
//         "show_follow_dialog": showFollowDialog,
//         "graphql": graphql?.toJson(),
//         "toast_content_on_load": toastContentOnLoad,
//         "show_view_shop": showViewShop,
//         "profile_pic_edit_sync_props": profilePicEditSyncProps?.toJson(),
//         "always_show_message_button_to_pro_account":
//             alwaysShowMessageButtonToProAccount,
//       };
// }

// class Graphql {
//   Graphql({
//     this.user,
//   });

//   GraphqlUser? user;

//   factory Graphql.fromJson(Map<String, dynamic> json) => Graphql(
//         user: GraphqlUser.fromJson(json["user"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "user": user?.toJson(),
//       };
// }

// class GraphqlUser {
//   GraphqlUser({
//     this.biography,
//     this.blockedByViewer,
//     this.restrictedByViewer,
//     this.countryBlock,
//     this.externalUrl,
//     this.externalUrlLinkshimmed,
//     this.edgeFollowedBy,
//     this.fbid,
//     this.followedByViewer,
//     this.edgeFollow,
//     this.followsViewer,
//     this.fullName,
//     this.hasArEffects,
//     this.hasClips,
//     this.hasGuides,
//     this.hasChannel,
//     this.hasBlockedViewer,
//     this.highlightReelCount,
//     this.hasRequestedViewer,
//     this.hideLikeAndViewCounts,
//     this.id,
//     this.isBusinessAccount,
//     this.isProfessionalAccount,
//     this.isJoinedRecently,
//     this.businessAddressJson,
//     this.businessContactMethod,
//     this.businessEmail,
//     this.businessPhoneNumber,
//     this.businessCategoryName,
//     this.overallCategoryName,
//     this.categoryEnum,
//     this.categoryName,
//     this.isPrivate,
//     this.isVerified,
//     this.edgeMutualFollowedBy,
//     this.profilePicUrl,
//     this.profilePicUrlHd,
//     this.requestedByViewer,
//     this.shouldShowCategory,
//     this.shouldShowPublicContacts,
//     this.username,
//     this.connectedFbPage,
//     this.pronouns,
//     this.edgeFelixCombinedPostUploads,
//     this.edgeFelixCombinedDraftUploads,
//     this.edgeFelixVideoTimeline,
//     this.edgeFelixDrafts,
//     this.edgeFelixPendingPostUploads,
//     this.edgeFelixPendingDraftUploads,
//     this.edgeOwnerToTimelineMedia,
//     this.edgeSavedMedia,
//     this.edgeMediaCollections,
//   });

//   String? biography;
//   bool? blockedByViewer;
//   bool? restrictedByViewer;
//   bool? countryBlock;
//   String? externalUrl;
//   String? externalUrlLinkshimmed;
//   EdgeFollowClass? edgeFollowedBy;
//   String? fbid;
//   bool? followedByViewer;
//   EdgeFollowClass? edgeFollow;
//   bool? followsViewer;
//   String? fullName;
//   bool? hasArEffects;
//   bool? hasClips;
//   bool? hasGuides;
//   bool? hasChannel;
//   bool? hasBlockedViewer;
//   int? highlightReelCount;
//   bool? hasRequestedViewer;
//   bool? hideLikeAndViewCounts;
//   String? id;
//   bool? isBusinessAccount;
//   bool? isProfessionalAccount;
//   bool? isJoinedRecently;
//   dynamic businessAddressJson;
//   dynamic businessContactMethod;
//   dynamic businessEmail;
//   dynamic businessPhoneNumber;
//   dynamic businessCategoryName;
//   dynamic overallCategoryName;
//   dynamic categoryEnum;
//   dynamic categoryName;
//   bool? isPrivate;
//   bool? isVerified;
//   EdgeMutualFollowedBy? edgeMutualFollowedBy;
//   String? profilePicUrl;
//   String? profilePicUrlHd;
//   bool? requestedByViewer;
//   bool? shouldShowCategory;
//   bool? shouldShowPublicContacts;
//   String? username;
//   dynamic connectedFbPage;
//   List<dynamic>? pronouns;
//   EdgeFelixCombinedDraftUploadsClass? edgeFelixCombinedPostUploads;
//   EdgeFelixCombinedDraftUploadsClass? edgeFelixCombinedDraftUploads;
//   EdgeFelixCombinedDraftUploadsClass? edgeFelixVideoTimeline;
//   EdgeFelixCombinedDraftUploadsClass? edgeFelixDrafts;
//   EdgeFelixCombinedDraftUploadsClass? edgeFelixPendingPostUploads;
//   EdgeFelixCombinedDraftUploadsClass? edgeFelixPendingDraftUploads;
//   EdgeFelixCombinedDraftUploadsClass? edgeOwnerToTimelineMedia;
//   EdgeFelixCombinedDraftUploadsClass? edgeSavedMedia;
//   EdgeFelixCombinedDraftUploadsClass? edgeMediaCollections;

//   factory GraphqlUser.fromJson(Map<String, dynamic> json) => GraphqlUser(
//         biography: json["biography"],
//         blockedByViewer: json["blocked_by_viewer"],
//         restrictedByViewer: json["restricted_by_viewer"],
//         countryBlock: json["country_block"],
//         externalUrl: json["external_url"],
//         externalUrlLinkshimmed: json["external_url_linkshimmed"],
//         edgeFollowedBy: EdgeFollowClass.fromJson(json["edge_followed_by"]),
//         fbid: json["fbid"],
//         followedByViewer: json["followed_by_viewer"],
//         edgeFollow: EdgeFollowClass.fromJson(json["edge_follow"]),
//         followsViewer: json["follows_viewer"],
//         fullName: json["full_name"],
//         hasArEffects: json["has_ar_effects"],
//         hasClips: json["has_clips"],
//         hasGuides: json["has_guides"],
//         hasChannel: json["has_channel"],
//         hasBlockedViewer: json["has_blocked_viewer"],
//         highlightReelCount: json["highlight_reel_count"],
//         hasRequestedViewer: json["has_requested_viewer"],
//         hideLikeAndViewCounts: json["hide_like_and_view_counts"],
//         id: json["id"],
//         isBusinessAccount: json["is_business_account"],
//         isProfessionalAccount: json["is_professional_account"],
//         isJoinedRecently: json["is_joined_recently"],
//         businessAddressJson: json["business_address_json"],
//         businessContactMethod: json["business_contact_method"],
//         businessEmail: json["business_email"],
//         businessPhoneNumber: json["business_phone_number"],
//         businessCategoryName: json["business_category_name"],
//         overallCategoryName: json["overall_category_name"],
//         categoryEnum: json["category_enum"],
//         categoryName: json["category_name"],
//         isPrivate: json["is_private"],
//         isVerified: json["is_verified"],
//         edgeMutualFollowedBy:
//             EdgeMutualFollowedBy.fromJson(json["edge_mutual_followed_by"]),
//         profilePicUrl: json["profile_pic_url"],
//         profilePicUrlHd: json["profile_pic_url_hd"],
//         requestedByViewer: json["requested_by_viewer"],
//         shouldShowCategory: json["should_show_category"],
//         shouldShowPublicContacts: json["should_show_public_contacts"],
//         username: json["username"],
//         connectedFbPage: json["connected_fb_page"],
//         pronouns: List<dynamic>.from(json["pronouns"].map((x) => x)),
//         // edgeFelixCombinedPostUploads:
//         //     EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //         json["edge_felix_combined_post_uploads"]),
//         // edgeFelixCombinedDraftUploads:
//         //     EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //         json["edge_felix_combined_draft_uploads"]),
//         // edgeFelixVideoTimeline: EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //     json["edge_felix_video_timeline"]),
//         // edgeFelixDrafts: EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //     json["edge_felix_drafts"]),
//         // edgeFelixPendingPostUploads:
//         //     EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //         json["edge_felix_pending_post_uploads"]),
//         // edgeFelixPendingDraftUploads:
//         //     EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //         json["edge_felix_pending_draft_uploads"]),
//         // edgeOwnerToTimelineMedia: EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //     json["edge_owner_to_timeline_media"]),
//         // edgeSavedMedia: EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //     json["edge_saved_media"]),
//         // edgeMediaCollections: EdgeFelixCombinedDraftUploadsClass.fromJson(
//         //     json["edge_media_collections"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "biography": biography,
//         "blocked_by_viewer": blockedByViewer,
//         "restricted_by_viewer": restrictedByViewer,
//         "country_block": countryBlock,
//         "external_url": externalUrl,
//         "external_url_linkshimmed": externalUrlLinkshimmed,
//         "edge_followed_by": edgeFollowedBy?.toJson(),
//         "fbid": fbid,
//         "followed_by_viewer": followedByViewer,
//         "edge_follow": edgeFollow?.toJson(),
//         "follows_viewer": followsViewer,
//         "full_name": fullName,
//         "has_ar_effects": hasArEffects,
//         "has_clips": hasClips,
//         "has_guides": hasGuides,
//         "has_channel": hasChannel,
//         "has_blocked_viewer": hasBlockedViewer,
//         "highlight_reel_count": highlightReelCount,
//         "has_requested_viewer": hasRequestedViewer,
//         "hide_like_and_view_counts": hideLikeAndViewCounts,
//         "id": id,
//         "is_business_account": isBusinessAccount,
//         "is_professional_account": isProfessionalAccount,
//         "is_joined_recently": isJoinedRecently,
//         "business_address_json": businessAddressJson,
//         "business_contact_method": businessContactMethod,
//         "business_email": businessEmail,
//         "business_phone_number": businessPhoneNumber,
//         "business_category_name": businessCategoryName,
//         "overall_category_name": overallCategoryName,
//         "category_enum": categoryEnum,
//         "category_name": categoryName,
//         "is_private": isPrivate,
//         "is_verified": isVerified,
//         "edge_mutual_followed_by": edgeMutualFollowedBy?.toJson(),
//         "profile_pic_url": profilePicUrl,
//         "profile_pic_url_hd": profilePicUrlHd,
//         "requested_by_viewer": requestedByViewer,
//         "should_show_category": shouldShowCategory,
//         "should_show_public_contacts": shouldShowPublicContacts,
//         "username": username,
//         "connected_fb_page": connectedFbPage,
//         "pronouns": List<dynamic>.from(pronouns!.map((x) => x)),
//         "edge_felix_combined_post_uploads":
//             edgeFelixCombinedPostUploads?.toJson(),
//         "edge_felix_combined_draft_uploads":
//             edgeFelixCombinedDraftUploads?.toJson(),
//         "edge_felix_video_timeline": edgeFelixVideoTimeline?.toJson(),
//         "edge_felix_drafts": edgeFelixDrafts?.toJson(),
//         "edge_felix_pending_post_uploads":
//             edgeFelixPendingPostUploads?.toJson(),
//         "edge_felix_pending_draft_uploads":
//             edgeFelixPendingDraftUploads?.toJson(),
//         "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia?.toJson(),
//         "edge_saved_media": edgeSavedMedia?.toJson(),
//         "edge_media_collections": edgeMediaCollections?.toJson(),
//       };
// }

// class EdgeFelixCombinedDraftUploadsClass {
//   EdgeFelixCombinedDraftUploadsClass({
//     this.count,
//     this.pageInfo,
//     this.edges,
//   });

//   int? count;
//   PageInfo? pageInfo;
//   List<EdgeFelixCombinedDraftUploadsEdge>? edges;

//   factory EdgeFelixCombinedDraftUploadsClass.fromJson(
//           Map<String, dynamic> json) =>
//       EdgeFelixCombinedDraftUploadsClass(
//         count: json["count"],
//         pageInfo: PageInfo.fromJson(json["page_info"]),
//         edges: List<EdgeFelixCombinedDraftUploadsEdge>.from(json["edges"]
//             .map((x) => EdgeFelixCombinedDraftUploadsEdge.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "count": count,
//         "page_info": pageInfo?.toJson(),
//         "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
//       };
// }

// class EdgeFelixCombinedDraftUploadsEdge {
//   EdgeFelixCombinedDraftUploadsEdge({
//     this.node,
//   });

//   PurpleNode? node;

//   factory EdgeFelixCombinedDraftUploadsEdge.fromJson(
//           Map<String, dynamic> json) =>
//       EdgeFelixCombinedDraftUploadsEdge(
//         node: PurpleNode.fromJson(json["node"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "node": node?.toJson(),
//       };
// }

// class PurpleNode {
//   PurpleNode({
//     this.typename,
//     this.id,
//     this.shortcode,
//     this.dimensions,
//     this.displayUrl,
//     this.edgeMediaToTaggedUser,
//     this.factCheckOverallRating,
//     this.factCheckInformation,
//     this.gatingInfo,
//     this.sharingFrictionInfo,
//     this.mediaOverlayInfo,
//     this.mediaPreview,
//     this.owner,
//     this.isVideo,
//     this.hasUpcomingEvent,
//     this.accessibilityCaption,
//     this.dashInfo,
//     this.hasAudio,
//     this.trackingToken,
//     this.videoUrl,
//     this.videoViewCount,
//     this.edgeMediaToCaption,
//     this.edgeMediaToComment,
//     this.commentsDisabled,
//     this.takenAtTimestamp,
//     this.edgeLikedBy,
//     this.edgeMediaPreviewLike,
//     this.location,
//     this.thumbnailSrc,
//     this.thumbnailResources,
//     this.felixProfileGridCrop,
//     this.coauthorProducers,
//     this.productType,
//     this.clipsMusicAttributionInfo,
//   });

//   Typename? typename;
//   String? id;
//   String? shortcode;
//   Dimensions? dimensions;
//   String? displayUrl;
//   EdgeMediaToTaggedUser? edgeMediaToTaggedUser;
//   dynamic factCheckOverallRating;
//   dynamic factCheckInformation;
//   dynamic gatingInfo;
//   SharingFrictionInfo? sharingFrictionInfo;
//   dynamic mediaOverlayInfo;
//   String? mediaPreview;
//   Owner? owner;
//   bool? isVideo;
//   bool? hasUpcomingEvent;
//   String? accessibilityCaption;
//   DashInfo? dashInfo;
//   bool? hasAudio;
//   String? trackingToken;
//   String? videoUrl;
//   int? videoViewCount;
//   EdgeMediaToCaption? edgeMediaToCaption;
//   EdgeFollowClass? edgeMediaToComment;
//   bool? commentsDisabled;
//   int? takenAtTimestamp;
//   EdgeFollowClass? edgeLikedBy;
//   EdgeFollowClass? edgeMediaPreviewLike;
//   Location? location;
//   String? thumbnailSrc;
//   List<ThumbnailResource>? thumbnailResources;
//   dynamic felixProfileGridCrop;
//   List<dynamic>? coauthorProducers;
//   String? productType;
//   ClipsMusicAttributionInfo? clipsMusicAttributionInfo;

//   factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
//         typename: typenameValues.map![json["__typename"]],
//         id: json["id"],
//         shortcode: json["shortcode"],
//         dimensions: Dimensions.fromJson(json["dimensions"]),
//         displayUrl: json["display_url"],
//         edgeMediaToTaggedUser:
//             EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]),
//         factCheckOverallRating: json["fact_check_overall_rating"],
//         factCheckInformation: json["fact_check_information"],
//         gatingInfo: json["gating_info"],
//         sharingFrictionInfo:
//             SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
//         mediaOverlayInfo: json["media_overlay_info"],
//         mediaPreview:
//             json["media_preview"] ?? null,
//         owner: Owner.fromJson(json["owner"]),
//         isVideo: json["is_video"],
//         hasUpcomingEvent: json["has_upcoming_event"],
//         accessibilityCaption: json["accessibility_caption"] == null
//             ? null
//             : json["accessibility_caption"],
//         dashInfo: json["dash_info"] == null
//             ? null
//             : DashInfo.fromJson(json["dash_info"]),
//         hasAudio: json["has_audio"] == null ? null : json["has_audio"],
//         trackingToken:
//             json["tracking_token"] == null ? null : json["tracking_token"],
//         videoUrl: json["video_url"] == null ? null : json["video_url"],
//         videoViewCount:
//             json["video_view_count"] == null ? null : json["video_view_count"],
//         edgeMediaToCaption:
//             EdgeMediaToCaption.fromJson(json["edge_media_to_caption"]),
//         edgeMediaToComment:
//             EdgeFollowClass.fromJson(json["edge_media_to_comment"]),
//         commentsDisabled: json["comments_disabled"],
//         takenAtTimestamp: json["taken_at_timestamp"],
//         edgeLikedBy: EdgeFollowClass.fromJson(json["edge_liked_by"]),
//         edgeMediaPreviewLike:
//             EdgeFollowClass.fromJson(json["edge_media_preview_like"]),
//         location: json["location"] == null
//             ? null
//             : Location.fromJson(json["location"]),
//         thumbnailSrc: json["thumbnail_src"],
//         thumbnailResources: List<ThumbnailResource>.from(
//             json["thumbnail_resources"]
//                 .map((x) => ThumbnailResource.fromJson(x))),
//         felixProfileGridCrop: json["felix_profile_grid_crop"],
//         coauthorProducers:
//             List<dynamic>.from(json["coauthor_producers"].map((x) => x)),
//         productType: json["product_type"] == null ? null : json["product_type"],
//         clipsMusicAttributionInfo: json["clips_music_attribution_info"] == null
//             ? null
//             : ClipsMusicAttributionInfo.fromJson(
//                 json["clips_music_attribution_info"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "__typename": typenameValues.reverse[typename],
//         "id": id,
//         "shortcode": shortcode,
//         "dimensions": dimensions?.toJson(),
//         "display_url": displayUrl,
//         "edge_media_to_tagged_user": edgeMediaToTaggedUser?.toJson(),
//         "fact_check_overall_rating": factCheckOverallRating,
//         "fact_check_information": factCheckInformation,
//         "gating_info": gatingInfo,
//         "sharing_friction_info": sharingFrictionInfo?.toJson(),
//         "media_overlay_info": mediaOverlayInfo,
//         "media_preview": mediaPreview == null ? null : mediaPreview,
//         "owner": owner?.toJson(),
//         "is_video": isVideo,
//         "has_upcoming_event": hasUpcomingEvent,
//         "accessibility_caption":
//             accessibilityCaption == null ? null : accessibilityCaption,
//         "dash_info": dashInfo == null ? null : dashInfo?.toJson(),
//         "has_audio": hasAudio == null ? null : hasAudio,
//         "tracking_token": trackingToken == null ? null : trackingToken,
//         "video_url": videoUrl == null ? null : videoUrl,
//         "video_view_count": videoViewCount == null ? null : videoViewCount,
//         "edge_media_to_caption": edgeMediaToCaption?.toJson(),
//         "edge_media_to_comment": edgeMediaToComment?.toJson(),
//         "comments_disabled": commentsDisabled,
//         "taken_at_timestamp": takenAtTimestamp,
//         "edge_liked_by": edgeLikedBy?.toJson(),
//         "edge_media_preview_like": edgeMediaPreviewLike?.toJson(),
//         "location": location == null ? null : location?.toJson(),
//         "thumbnail_src": thumbnailSrc,
//         "thumbnail_resources":
//             List<dynamic>.from(thumbnailResources!.map((x) => x.toJson())),
//         "felix_profile_grid_crop": felixProfileGridCrop,
//         "coauthor_producers":
//             List<dynamic>.from(coauthorProducers!.map((x) => x)),
//         "product_type": productType == null ? null : productType,
//         "clips_music_attribution_info": clipsMusicAttributionInfo == null
//             ? null
//             : clipsMusicAttributionInfo?.toJson(),
//       };
// }

// class ClipsMusicAttributionInfo {
//   ClipsMusicAttributionInfo({
//     this.artistName,
//     this.songName,
//     this.usesOriginalAudio,
//     this.shouldMuteAudio,
//     this.shouldMuteAudioReason,
//     this.audioId,
//   });

//   String? artistName;
//   String? songName;
//   bool? usesOriginalAudio;
//   bool? shouldMuteAudio;
//   String? shouldMuteAudioReason;
//   String? audioId;

//   factory ClipsMusicAttributionInfo.fromJson(Map<String, dynamic> json) =>
//       ClipsMusicAttributionInfo(
//         artistName: json["artist_name"],
//         songName: json["song_name"],
//         usesOriginalAudio: json["uses_original_audio"],
//         shouldMuteAudio: json["should_mute_audio"],
//         shouldMuteAudioReason: json["should_mute_audio_reason"],
//         audioId: json["audio_id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "artist_name": artistName,
//         "song_name": songName,
//         "uses_original_audio": usesOriginalAudio,
//         "should_mute_audio": shouldMuteAudio,
//         "should_mute_audio_reason": shouldMuteAudioReason,
//         "audio_id": audioId,
//       };
// }

// class DashInfo {
//   DashInfo({
//     this.isDashEligible,
//     this.videoDashManifest,
//     this.numberOfQualities,
//   });

//   bool? isDashEligible;
//   String? videoDashManifest;
//   int? numberOfQualities;

//   factory DashInfo.fromJson(Map<String, dynamic> json) => DashInfo(
//         isDashEligible: json["is_dash_eligible"],
//         videoDashManifest: json["video_dash_manifest"],
//         numberOfQualities: json["number_of_qualities"],
//       );

//   Map<String, dynamic> toJson() => {
//         "is_dash_eligible": isDashEligible,
//         "video_dash_manifest": videoDashManifest,
//         "number_of_qualities": numberOfQualities,
//       };
// }

// class Dimensions {
//   Dimensions({
//     this.height,
//     this.width,
//   });

//   int? height;
//   int? width;

//   factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
//         height: json["height"],
//         width: json["width"],
//       );

//   Map<String, dynamic> toJson() => {
//         "height": height,
//         "width": width,
//       };
// }

// class EdgeFollowClass {
//   EdgeFollowClass({
//     this.count,
//   });

//   int? count;

//   factory EdgeFollowClass.fromJson(Map<String, dynamic> json) =>
//       EdgeFollowClass(
//         count: json["count"],
//       );

//   Map<String, dynamic> toJson() => {
//         "count": count,
//       };
// }

// class EdgeMediaToCaption {
//   EdgeMediaToCaption({
//     this.edges,
//   });

//   List<EdgeMediaToCaptionEdge>? edges;

//   factory EdgeMediaToCaption.fromJson(Map<String, dynamic> json) =>
//       EdgeMediaToCaption(
//         edges: List<EdgeMediaToCaptionEdge>.from(
//             json["edges"].map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
//       };
// }

// class EdgeMediaToCaptionEdge {
//   EdgeMediaToCaptionEdge({
//     this.node,
//   });

//   FluffyNode? node;

//   factory EdgeMediaToCaptionEdge.fromJson(Map<String, dynamic> json) =>
//       EdgeMediaToCaptionEdge(
//         node: FluffyNode.fromJson(json["node"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "node": node?.toJson(),
//       };
// }

// class FluffyNode {
//   FluffyNode({
//     this.text,
//   });

//   String? text;

//   factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
//         text: json["text"],
//       );

//   Map<String, dynamic> toJson() => {
//         "text": text,
//       };
// }

// class EdgeMediaToTaggedUser {
//   EdgeMediaToTaggedUser({
//     this.edges,
//   });

//   List<EdgeMediaToTaggedUserEdge>? edges;

//   factory EdgeMediaToTaggedUser.fromJson(Map<String, dynamic> json) =>
//       EdgeMediaToTaggedUser(
//         edges: List<EdgeMediaToTaggedUserEdge>.from(
//             json["edges"].map((x) => EdgeMediaToTaggedUserEdge.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "edges": List<dynamic>.from(edges!.map((x) => x.toJson())),
//       };
// }

// class EdgeMediaToTaggedUserEdge {
//   EdgeMediaToTaggedUserEdge({
//     this.node,
//   });

//   TentacledNode? node;

//   factory EdgeMediaToTaggedUserEdge.fromJson(Map<String, dynamic> json) =>
//       EdgeMediaToTaggedUserEdge(
//         node: TentacledNode.fromJson(json["node"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "node": node?.toJson(),
//       };
// }

// class TentacledNode {
//   TentacledNode({
//     this.user,
//     this.x,
//     this.y,
//   });

//   NodeUser? user;
//   double? x;
//   double? y;

//   factory TentacledNode.fromJson(Map<String, dynamic> json) => TentacledNode(
//         user: NodeUser.fromJson(json["user"]),
//         x: json["x"].toDouble(),
//         y: json["y"].toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "user": user?.toJson(),
//         "x": x,
//         "y": y,
//       };
// }

// class NodeUser {
//   NodeUser({
//     this.fullName,
//     this.followedByViewer,
//     this.id,
//     this.isVerified,
//     this.profilePicUrl,
//     this.username,
//   });

//   String? fullName;
//   bool? followedByViewer;
//   String? id;
//   bool? isVerified;
//   String? profilePicUrl;
//   String? username;

//   factory NodeUser.fromJson(Map<String, dynamic> json) => NodeUser(
//         fullName: json["full_name"],
//         followedByViewer: json["followed_by_viewer"],
//         id: json["id"],
//         isVerified: json["is_verified"],
//         profilePicUrl: json["profile_pic_url"],
//         username: json["username"],
//       );

//   Map<String, dynamic> toJson() => {
//         "full_name": fullName,
//         "followed_by_viewer": followedByViewer,
//         "id": id,
//         "is_verified": isVerified,
//         "profile_pic_url": profilePicUrl,
//         "username": username,
//       };
// }

// class Location {
//   Location({
//     this.id,
//     this.hasPublicPage,
//     this.name,
//     this.slug,
//   });

//   String? id;
//   bool? hasPublicPage;
//   String? name;
//   String? slug;

//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         id: json["id"],
//         hasPublicPage: json["has_public_page"],
//         name: json["name"],
//         slug: json["slug"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "has_public_page": hasPublicPage,
//         "name": name,
//         "slug": slug,
//       };
// }

// class Owner {
//   Owner({
//     this.id,
//     this.username,
//   });

//   String? id;
//   String? username;

//   factory Owner.fromJson(Map<String, dynamic> json) => Owner(
//         id: json["id"],
//         username: json["username"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "username": username,
//       };
// }

// class SharingFrictionInfo {
//   SharingFrictionInfo({
//     this.shouldHaveSharingFriction,
//     this.bloksAppUrl,
//   });

//   bool? shouldHaveSharingFriction;
//   dynamic bloksAppUrl;

//   factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) =>
//       SharingFrictionInfo(
//         shouldHaveSharingFriction: json["should_have_sharing_friction"],
//         bloksAppUrl: json["bloks_app_url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "should_have_sharing_friction": shouldHaveSharingFriction,
//         "bloks_app_url": bloksAppUrl,
//       };
// }

// class ThumbnailResource {
//   ThumbnailResource({
//     this.src,
//     this.configWidth,
//     this.configHeight,
//   });

//   String? src;
//   int? configWidth;
//   int? configHeight;

//   factory ThumbnailResource.fromJson(Map<String, dynamic> json) =>
//       ThumbnailResource(
//         src: json["src"],
//         configWidth: json["config_width"],
//         configHeight: json["config_height"],
//       );

//   Map<String, dynamic> toJson() => {
//         "src": src,
//         "config_width": configWidth,
//         "config_height": configHeight,
//       };
// }

// enum Typename { GRAPH_VIDEO, GRAPH_IMAGE, GRAPH_SIDECAR }

// final typenameValues = EnumValues({
//   "GraphImage": Typename.GRAPH_IMAGE,
//   "GraphSidecar": Typename.GRAPH_SIDECAR,
//   "GraphVideo": Typename.GRAPH_VIDEO
// });

// class PageInfo {
//   PageInfo({
//     this.hasNextPage,
//     this.endCursor,
//   });

//   bool? hasNextPage;
//   String? endCursor;

//   factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
//         hasNextPage: json["has_next_page"],
//         endCursor: json["end_cursor"] == null ? null : json["end_cursor"],
//       );

//   Map<String, dynamic> toJson() => {
//         "has_next_page": hasNextPage,
//         "end_cursor": endCursor == null ? null : endCursor,
//       };
// }

// class EdgeMutualFollowedBy {
//   EdgeMutualFollowedBy({
//     this.count,
//     this.edges,
//   });

//   int? count;
//   List<dynamic>? edges;

//   factory EdgeMutualFollowedBy.fromJson(Map<String, dynamic> json) =>
//       EdgeMutualFollowedBy(
//         count: json["count"],
//         edges: List<dynamic>.from(json["edges"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "count": count,
//         "edges": List<dynamic>.from(edges!.map((x) => x)),
//       };
// }

// class ProfilePicEditSyncProps {
//   ProfilePicEditSyncProps({
//     this.showChangeProfilePicConfirmDialog,
//     this.showProfilePicSyncReminders,
//     this.identityId,
//     this.removeProfilePicHeader,
//     this.removeProfilePicSubtext,
//     this.removeProfilePicConfirmCta,
//     this.removeProfilePicCancelCta,
//     this.isBusinessCentralIdentity,
//     this.changeProfilePicActionsScreenHeader,
//     this.changeProfilePicActionsScreenSubheader,
//     this.changeProfilePicActionsScreenUploadCta,
//     this.changeProfilePicActionsScreenRemoveCta,
//     this.changeProfilePicActionsScreenCancelCta,
//   });

//   bool? showChangeProfilePicConfirmDialog;
//   bool? showProfilePicSyncReminders;
//   String? identityId;
//   dynamic removeProfilePicHeader;
//   dynamic removeProfilePicSubtext;
//   dynamic removeProfilePicConfirmCta;
//   dynamic removeProfilePicCancelCta;
//   bool? isBusinessCentralIdentity;
//   List<String>? changeProfilePicActionsScreenHeader;
//   List<String>? changeProfilePicActionsScreenSubheader;
//   List<String>? changeProfilePicActionsScreenUploadCta;
//   List<String>? changeProfilePicActionsScreenRemoveCta;
//   List<String>? changeProfilePicActionsScreenCancelCta;

//   factory ProfilePicEditSyncProps.fromJson(Map<String, dynamic> json) =>
//       ProfilePicEditSyncProps(
//         showChangeProfilePicConfirmDialog:
//             json["show_change_profile_pic_confirm_dialog"],
//         showProfilePicSyncReminders: json["show_profile_pic_sync_reminders"],
//         identityId: json["identity_id"],
//         removeProfilePicHeader: json["remove_profile_pic_header"],
//         removeProfilePicSubtext: json["remove_profile_pic_subtext"],
//         removeProfilePicConfirmCta: json["remove_profile_pic_confirm_cta"],
//         removeProfilePicCancelCta: json["remove_profile_pic_cancel_cta"],
//         isBusinessCentralIdentity: json["is_business_central_identity"],
//         changeProfilePicActionsScreenHeader: List<String>.from(
//             json["change_profile_pic_actions_screen_header"].map((x) => x)),
//         changeProfilePicActionsScreenSubheader: List<String>.from(
//             json["change_profile_pic_actions_screen_subheader"].map((x) => x)),
//         changeProfilePicActionsScreenUploadCta: List<String>.from(
//             json["change_profile_pic_actions_screen_upload_cta"].map((x) => x)),
//         changeProfilePicActionsScreenRemoveCta: List<String>.from(
//             json["change_profile_pic_actions_screen_remove_cta"].map((x) => x)),
//         changeProfilePicActionsScreenCancelCta: List<String>.from(
//             json["change_profile_pic_actions_screen_cancel_cta"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "show_change_profile_pic_confirm_dialog":
//             showChangeProfilePicConfirmDialog,
//         "show_profile_pic_sync_reminders": showProfilePicSyncReminders,
//         "identity_id": identityId,
//         "remove_profile_pic_header": removeProfilePicHeader,
//         "remove_profile_pic_subtext": removeProfilePicSubtext,
//         "remove_profile_pic_confirm_cta": removeProfilePicConfirmCta,
//         "remove_profile_pic_cancel_cta": removeProfilePicCancelCta,
//         "is_business_central_identity": isBusinessCentralIdentity,
//         "change_profile_pic_actions_screen_header": List<dynamic>.from(
//             changeProfilePicActionsScreenHeader!.map((x) => x)),
//         "change_profile_pic_actions_screen_subheader": List<dynamic>.from(
//             changeProfilePicActionsScreenSubheader!.map((x) => x)),
//         "change_profile_pic_actions_screen_upload_cta": List<dynamic>.from(
//             changeProfilePicActionsScreenUploadCta!.map((x) => x)),
//         "change_profile_pic_actions_screen_remove_cta": List<dynamic>.from(
//             changeProfilePicActionsScreenRemoveCta!.map((x) => x)),
//         "change_profile_pic_actions_screen_cancel_cta": List<dynamic>.from(
//             changeProfilePicActionsScreenCancelCta!.map((x) => x)),
//       };
// }

// class EnumValues<T> {
//   Map<String, T>? map;
//   Map<T, String>? reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map!.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap!;
//   }
// }
