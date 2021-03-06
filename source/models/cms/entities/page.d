module models.cms.entities.page;

@safe:
import models.cms;

class DCMSPage : DCMSEntity {
  mixin(EntityThis!("CMSPage"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "keywords": TagsAttribute,
        "isPrivate": BooleanAttribute,
        "page": UUIDAttribute,
        "url": StringAttribute
      ])
      .registerPath("cms_pages");
  }
}
mixin(EntityCalls!("CMSPage"));
